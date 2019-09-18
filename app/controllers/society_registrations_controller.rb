class SocietyRegistrationsController < ApplicationController
# layout 'application'
    def index
        res = []
        societies = SocietyRegistration.all.reorder('id DESC')#where("district_id = ? and mandal_id = ? and fish_landing_center = ?",params[:district_id],params[:mandal_id],params[:flc_id])
         if params[:districts] && params[:districts]!= "undefined"
           societies = SocietyRegistration.where(:district_id => params[:districts])
         end
        if params[:districts] && params[:mandals] && (params[:mandals] != "undefined" && params[:districts] != "undefined")
            societies = SocietyRegistration.where(:mandal_id => params[:mandals])
        end
        if params[:districts] && params[:mandals] && params[:fish_landing_centers] && (params[:fish_landing_centers] != "undefined" && params[:mandals] != "undefined" && params[:districts] != "undefined")
            societies = SocietyRegistration.where(:fish_landing_center_id => params[:fish_landing_centers])
        end
        puts societies.map{|s| s.id}
        societies.each do |society|
          puts society.inspect
            puts "XCCCCCCCCCCCCCCCCCCCCCCC"
            res << {:id => society.id,:district_name => society.district.district_name,
                    :mandal_name => society.mandal.mandal_name,
                    :flc_id => society.fish_landing_center.flc_name,
                    :society_name => society.society_name,
                    :society_reg_no => society.society_reg_no,
                    :ncdc => society.ncdc}
        end
        json_response(res)
    end

    def get_society_details
        if params[:district_id] != "undefined"
            societies = SocietyRegistration.where(:district_id => params[:district_id])
        end
        if params[:mandal_id] != "undefined"
            societies = SocietyRegistration.where(:mandal_id => params[:mandal_id])
        end
        if params[:fish_landing_center_id] != "undefined"
            societies = SocietyRegistration.where(:fish_landing_center_id => params[:fish_landing_center_id])
        end
        json_response(res)
    end
    def create
        suc = true
        invalid_vsl = []
        society_reg = SocietyRegistration.new
        society_reg.district_id = params[:district_name]
        society_reg.mandal_id = params[:mandal]
        society_reg.fish_landing_center_id = params[:flc]
        society_reg.society_name = params[:society_name]
        society_reg.society_reg_no = params[:society_reg_no]
        society_reg.ncdc = params[:ncdc_reg] == "yes" ? true : false
        if society_reg.valid?
            society_reg.save
            unless params["field"].blank? && params["field"]["elements"].blank?
                params["field"]["elements"].each do |field|
                        unless field["name"].blank?
                            soc_vsl = SocietyVessel.new
                            vsl = VesselDetail.where(:boat_id => field["name"])
                            unless vsl.blank?
                                soc_vsl.society_registraion_id = society_reg.id
                                soc_vsl.save
                                suc = true
                            else
                                invalid_vsl << field["name"]
                                suc = false
                                puts field["name"].inspect
                                puts "Invalid VESSEL"
                            end
                    end
                end
            end
            if suc 
                res = {:success => true,:message => "Society created successfully"}
            else
                res = {:success => false,:message => "Invalid Vessels #{invalid_vsl}"}
            end
        else
            res = {:success => false,:message => society_reg.errors.full_messages  }
        end
        json_response(res)
    end

    def update
        society_reg = SocietyRegistration.where(:id => params[:society_id])
        society_reg.save
    end

    def add_members
       puts params.inspect
        society = SocietyRegistration.where(:id => params[:society_id]).first
        # unless params[:society_registration].blank?
            society_member = SocietyMember.new
            society_member.member_name = params[:member_name]
             society_member.age = params[:age]
            # society_member.member_caste_cert_no = params[:certificate_number]
            society_member.member_aadhaar_no = params[:aadhaar_number]
            society_member.user_id=params[:userId]
            society_member.member_aadhaar_ref_id = params[:reference]
            society_member.society_registration_id = params[:society_id]
            society_member.member_ration_card_no = params[:ration_card]
            society_member.member_mobile_no = params[:mobile_number]
            society_member.swimming = params[:Swimming]
            society_member.netting = params[:netting]
            society_member.net_sweing = params[:NetSewing]
            society_member.society_registration_id = society.id
            society_member.is_president = params[:is_president]
            society_member.fish_vendor = params[:fish_vendor]
            society_member.member_social_status = params[:social_status]
            society_member.member_emp_status = params[:employment_status]
            society_member.member_date_of_birth = params[:date_of_birth].to_date
            puts society_member.member_date_of_birth
            puts "DATE OF BIRTH"
            society_member.gender = params[:gender]
            if society_member.valid?
                society_member.save
                res = {:status => true,:message => "Successfully added society member"}
             else
            res = {:status => false,:message => society_member.errors.full_messages}
        end
        json_response(res)
    end

    def delete
    end

    def delete_member
        puts params.inspect
        soc_mem = SocietyMember.where(:id => params[:id]).first
        if soc_mem.delete
            json_response({:success => true,:message => "Society member deleted successfully"})
        else
            json_response({:success => false,:message => "Unbale to delete Society Member"})
        end
    end

    def society_members
        soc = SocietyRegistration.where(:id => params[:id]).first
        # society_members = soc.society_members
        res = {:success => true,:message => soc.society_members}
        json_response(res) 
    end

    def delete_society
        soc = SocietyRegistration.where(:id => params[:id]).first
        if soc.delete
            json_response(:success => true,:message => "Society deleted successfully")
        else
            json_response(:success => false,:message => "Society deleteion failed")
        end
    end

    def edit_member
        puts params.inspect
        puts "XXXXXXXXXXXXXXXXXXXXXXXXx"
        soc_mem = SocietyMember.where(:id => params[:society_member_id]).first
        if soc_mem
        json_response({:success => true,:message => soc_mem})
        else
            json_response({:success => false,:message => "Society member does not exixts !"})
        end
    end
    def update_society_member
        society = SocietyRegistration.where(:id => params[:society_id]).first
        society_member = SocietyMember.where(:id => params[:society_member_id]).first
            society_member.member_name = params[:member_name]
            society_member.age = params[:age]
            society_member.user_id=params[:userId]
            society_member.member_aadhaar_no = params[:aadhaar_number]
            society_member.member_aadhaar_ref_id = params[:reference]
            society_member.society_registration_id = params[:society_id]
            society_member.member_ration_card_no = params[:ration_card]
            society_member.member_mobile_no = params[:mobile_number]
            society_member.swimming = params[:Swimming]
            society_member.netting = params[:netting]
            society_member.net_sweing = params[:NetSewing]
            society_member.society_registration_id = society.id
            society_member.is_president = params[:is_president]
            society_member.fish_vendor = params[:fish_vendor]
            society_member.member_social_status = params[:social_status]
            society_member.member_emp_status = params[:employment_status]
            society_member.gender = params[:gender]
            society_member.member_date_of_birth = params[:date_of_birth].to_date
            puts "DATE OF BIRTH"
            if society_member.valid?
                society_member.save
                res = {:status => true,:message => "Successfully updated society member"}
             else
            res = {:status => false,:message => society_member.errors.full_messages}
        end
        json_response(res)
    end

    def verify_vessel
        valid_vsl = []
        invalid_vsl = [] 
        succ = false
        unless params[:elements].blank?
            params[:elements].each do |elem|
                res = VesselDetail.where(:boat_id => elem["name"]).first
                puts res.inspect
                puts "XXXXXXXXXXXXXXXXXXXXXXXXXXXX"
                if res
                    soc_vsl = SocietyVessel.where(:vessel_detail_id => res.id).first
                    puts soc_vsl.inspect
                    puts "YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY"
                    if soc_vsl
                        puts "EXISTING VESSEL"
                        succ = false
                        invalid_vsl << elem["name"]
                    else
                        puts "VALID VESSEL"
                        succ = true
                        valid_vsl << elem["name"]
                    end
                else
                    puts "INVALID VESSEL"
                    success = false
                    invalid_vsl << elem["name"]
                end
            end
            if succ
                json_response({:success => true,:message => "Valid Vessel"})
            else
                json_response({:success => true,:message => "Folowing vessels are invalid #{invalid_vsl}"})
            end
        else
            json_response({:success => false,:message => "Please enter verssel number"})
        end
    end

end
