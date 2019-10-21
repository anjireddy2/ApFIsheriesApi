class VesselDetailsController < ApplicationController
    require 'open-uri'
    require 'json'
    require 'active_support/core_ext/hash'

    before_action :get_flc,except: ["index","verify_aadhaar","verify_ration_card","bank_details","audit"] 
    

    
    def bank_details
        banks = Bank.all.map{|b| b.bank_name}
        json_response({:success => true,:banks => banks})
   end

    def index

        #  @vessel_details = @flc.vessel_details
        res = []
        if params[:district_id] != "undefined"
            @vessel_details = VesselDetail.where(:district_id => params[:district_id]).reorder('id DESC')
        end
        if params[:mandal_id] != "undefined"
            @vessel_details = VesselDetail.where(:mandal_id => params[:mandal_id]).reorder('id DESC')
        end
        if params[:fish_landing_center_id] != "undefined"
            @vessel_details = VesselDetail.where(:fish_landing_center_id => params[:fish_landing_center_id]).reorder('id DESC')
        end

        
        @vessel_details.each do |vessel|
#            raise water_body.water_body_detail.inspect
            res  << {:id => vessel.id,:district_name => vessel.district.district_name,:mandal_name => vessel.mandal.mandal_name,:flc_name => vessel.fish_landing_center.flc_name,:vessel_owner_name => vessel.owner_name,:vessel_number => vessel.boat_id,:status => vessel.deleted ? "In-Active" : "Active",:boat_type => vessel.boat_type,:license_renewal_date => vessel.license_renewed_date,:license_valid_upto => vessel.license_valid_upto,:aadhaar_no => vessel.aadhaar_no,:mobile_number => vessel.mobile_number,:bank_account_number => vessel.bank_account_number,
                :ration_card_number => vessel.ration_card_number,:ref_number => vessel.member_aadhaar_ref_id}
        end
        res << {:total_count => res.length,:verified_count => @vessel_details.where("member_aadhaar_ref_id != ''").count,:not_verified_count => res.length - @vessel_details.where("member_aadhaar_ref_id != ''").count}
        json_response(res)
        
    end
    
    def create
       
        puts params.inspect
        vessel_detail = VesselDetail.new()
        
        vessel_detail.district_id=params[:district_id]
        vessel_detail.mandal_id=params[:mandal_id]
        vessel_detail.fish_landing_center_id=params[:flc]
        vessel_detail.user_id=params[:userId]
        # vessel_detail.owner_id=params[:]
        vessel_detail.owner_name=params[:owner_name]
        vessel_detail.boat_id=params[:vessel_number]
        vessel_detail.vessel_name = params[:vessel_name]
        vessel_detail.boat_type=params[:vessltype]
        vessel_detail.license_renewed_date=params[:licence_renewal_date].to_date
        vessel_detail.license_valid_upto=params[:licence_valid_date].to_date
        vessel_detail.father_name=params[:father_name]
        vessel_detail.aadhaar_no=params[:aadhaar_number]
        vessel_detail.mobile_number=params[:mobile_number]
        vessel_detail.bank_account_number=params[:bank_account_number].to_s
        vessel_detail.ration_card_number=params[:ration_card]
        vessel_detail.ifsc_code=params[:ifsc_code]
        vessel_detail.mfid_number=params[:mfid_number]
        vessel_detail.bank_details=params[:bank_name]
        vessel_detail.email_id=params[:email_id]
        vessel_detail.deleted=false
        vessel_detail.gill_net_count = params[:gill_net_count]
        vessel_detail.drag_net_count = params[:drag_net_count]
        vessel_detail.cast_net_count = params[:cast_net_count]
        vessel_detail.trawl_net_count = params[:trawl_net_count]
        vessel_detail.life_bouys_count = params[:life_bouys_count]
        vessel_detail.dat_count = params[:dat_count]
        vessel_detail.gps_count = params[:gps_count]
        vessel_detail.fish_finder_count = params[:fish_finder_count]
        vessel_detail.echo_sounder_count = params[:echo_sounder_count]
        vessel_detail.user_id = params[:userId]
        vessel_detail.member_aadhaar_ref_id = params[:reference]
        vessel_detail.is_eligible=true
        if params[:bank_name] == "Others"
            if !params[:bank_others_name].blank?
                bank = Bank.create(:bank_name => params[:bank_others_name])
                vessel_detail.bank_details = bank.bank_name
            end
        end
       if vessel_detail.valid?
        vsl_usr = VesselUser.new()
        col_names = VesselDetail.column_names
        bfr_data = ""
        aftr_data = ""
        col_names.each do |col_name|
            bfr_data += col_name.to_s + ":" + vessel_detail[col_name].to_s + ","
            
            # vsl_usr.data_after_save = col_name + ":" + vessel_detail[col_name] 
        end
        vsl_usr.data_before_save = bfr_data 
          vessel_detail.save
          vsl_usr.vessel_detail = vessel_detail
          vsl_usr.user_id = params[:userId]
          col_names = VesselDetail.column_names
          col_names.each do |col_name|
              aftr_data += col_name.to_s + ":" + vessel_detail[col_name].to_s + ","
          end
          vsl_usr.data_after_save = aftr_data
          vsl_usr.save!
            res = {:success => true,:message => "Vessel #{vessel_detail.boat_id} created Succesfully"}
        else
            res = {:success => false,:message => vessel_detail.errors.full_messages}
        end
        json_response(res)
    end
    
    
      def edit_vessel
        # res = []
        res = VesselDetail.where(:id => params[:id]).first
        puts res.inspect

        puts "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXx"
        json_response(res)
    end
   
    def update_vessel
        # res = []
        vessel_detail = VesselDetail.where(:id => params[:id]).first
        puts vessel_detail.inspect
        vessel_detail.district_id=params[:district_name]
        vessel_detail.mandal_id=params[:mandal]
        vessel_detail.fish_landing_center_id=params[:flc]
        vessel_detail.user_id=params[:userId]
        # vessel_detail.owner_id=params[:]
        vessel_detail.owner_name=params[:owner_name]
        vessel_detail.boat_id=params[:vessel_number]
        vessel_detail.boat_type=params[:vessltype]
        vessel_detail.license_renewed_date=params[:licence_renewal_date].to_date
        vessel_detail.license_valid_upto=params[:licence_valid_date].to_date
        vessel_detail.father_name=params[:father_name]
        vessel_detail.aadhaar_no=params[:aadhaar_number]
        vessel_detail.member_aadhaar_ref_id = params[:reference]
        vessel_detail.mobile_number=params[:mobile_number]
        vessel_detail.bank_account_number=params[:bank_account_number].to_s
        vessel_detail.ration_card_number=params[:ration_card]
        vessel_detail.ifsc_code=params[:ifsc_code]
        vessel_detail.mfid_number=params[:mfid_number]
        vessel_detail.bank_details=params[:bank_name]
        vessel_detail.email_id=params[:email_id]
        vessel_detail.deleted=false
        vessel_detail.gill_net_count = params[:gill_net_count]
        vessel_detail.drag_net_count = params[:drag_net_count]
        vessel_detail.cast_net_count = params[:cast_net_count]
        vessel_detail.trawl_net_count = params[:trawl_net_count]
        vessel_detail.life_bouys_count = params[:life_bouys_count]
        vessel_detail.dat_count = params[:dat_count]
        vessel_detail.gps_count = params[:gps_count]
        vessel_detail.fish_finder_count = params[:fish_finder_count]
        vessel_detail.echo_sounder_count = params[:echo_sounder_count]
        vessel_detail.user_id = params[:userId]
        vessel_detail.member_aadhaar_ref_id = params[:reference]
        vessel_detail.is_eligible=true
        vessel_detail.vessel_name = params[:vessel_name]
        # vessel_detail.rejection_reason_id=params[:]
        vessel_detail.comment=params[:remarks]
        if params[:bank_name] == "Others"
            if !params[:bank_others_name].blank?
                bank = Bank.create(:bank_name => params[:bank_others_name])
                vessel_detail.bank_details = bank.bank_name
            end
        end
        puts "XXXXXXXXXXXXXXXXXXXXXX"
        if vessel_detail.valid?
            vsl_usr = VesselUser.new()
            col_names = VesselDetail.column_names
            bfr_data = ""
            aftr_data = ""
            col_names.each do |col_name|
                bfr_data += col_name.to_s + ":" + vessel_detail[col_name].to_s + ","
                
                # vsl_usr.data_after_save = col_name + ":" + vessel_detail[col_name] 
            end
            vsl_usr.data_before_save = bfr_data 
            vessel_detail.save
            vsl_usr.vessel_detail = vessel_detail
            vsl_usr.user_id = params[:userId]
            col_names = VesselDetail.column_names
            col_names.each do |col_name|
                aftr_data += col_name.to_s + ":" + vessel_detail[col_name].to_s + ","
            end
            vsl_usr.data_after_save = aftr_data
            vsl_usr.save
            res = {:success => true,:message => "Vessel Details updated succesfully"}
        else
            res = {:success => false,:message => vessel_detail.errors.full_messages}
        end
        json_response(res)
    end
    def destroy
#        res = []
#        puts params[:id].inspect
#        puts @flc.vessel_details.first.inspect
        @vessel = @flc.vessel_details.where(:id => params[:id]).first
        puts @vessel.boat_id.inspect
        puts "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
        vessel_number = @vessel.boat_id
        
        if !@vessel.deleted && @vessel.update(:deleted => true)
            res = {:success => true,:message => "Vessel #{vessel_number} deleted Successfully"}
        else
            res = {:success => false,:message => "Unable to delete #{vessel_number}"}
        end
        
        puts res.inspect
        puts "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
        json_response(res)
    end
    

    def verify_aadhaar
        begin
            response = open("https://dev-eys-myap.e-pragati.in/integration-service/integration/api/v1.0/getVaultRefID?aadhaarNumber="+params[:adhid]).read
            if response.blank?
                res = {:success => false,:message => "Invalid Aadhaar Number"}
            else
                res = {:success => true,:message => "Aadhaar is Verified",:ref_no => response}
            end
            json_response(res)
        rescue
            json_response({:success => false,:message => "Aadhaar Api is down"})
        end
    end

    def verify_ration_card
        succ = false
        father_name = ""
        owner_name = ""
        gender = ""
        age = ""
        date_of_birth = ""
        url = "https://qa-apimgateway.e-pragati.in/rationcardapis/1.0.0/api/v1/Print?existingRCNum="+params[:rationid]
        headers = {Authorization: "Bearer f5aa9ac1-f4d7-35f7-9783-c5a957b0a8d6"}
        begin        
            response = HTTParty.get(url, headers: headers)
            res = JSON.parse(Hash.from_xml(response.body).to_json)
            unless membesr = res["Envelope"]["Body"]["getRationCardPrintDetailsResponse"]["return"]["rationCardDetails"].blank?
            membesr = res["Envelope"]["Body"]["getRationCardPrintDetailsResponse"]["return"]["rationCardDetails"]["memberdetails"]
            membesr.each do |member|
                puts member.inspect
                if params[:adhar_no].to_s == member["uid"].to_s
                    succ = true
                    father_name = member["father"]
                    owner_name = member["eiduidname"]
                    gender = member["gender"] == 1 ? "Male" : "Female"
                    age = member["age"]
                    date_of_birth = member["dateofBirth"]
                   break;
                end
            end
        end
            if succ
                json_response({:success => true,:message => "Ration Card Verified Succesfully",
                                :father_name => father_name,
                                :owner_name => owner_name,
                                :gender => gender,
                                :age => age,
                                :date_of_birth => "21-05-1984".to_datetime })
            else
                json_response({:success => false,:message => "Ration card details and Aadhaar number is mismacthing"})
            end
        rescue
            json_response({:success => false,:message => "Invalid Ration Number"})
        end
    end

    def crew_list
        vsl = VesselDetail.where(:id => params[:id]).first
        puts vsl.inspect
        crw_membrs = vsl.vessel_crew_members
        json_response({:success => true,:message => crw_membrs})
    end

    def delete_crew_member
        # puts params.inspect
        crw_mem = VesselCrewMember.where(:id => params[:member_id]).first
        vsl = VesselDetail.where(:id => params[:id]).first
        if crw_mem.delete
            json_response({:success => true,:message => vsl.vessel_crew_members })
        else
            json_response({:success => false,:message => "Unable to delete Crew Member" })
        end
    end

    def edit_crew_member
        crw_member = VesselCrewMember.where(:id => params[:member_id]).first
        json_response({:success => true,:message => crw_member})
    end

    def update_crew_member
        puts params.inspect
        vessel = VesselDetail.where(:id => params[:id]).first
        crw_member = VesselCrewMember.where(:id => params[:member_id]).first
        crw_member.vessel_detail_id = vessel.id
        crw_member.vessel_reg_no = vessel.boat_id
        crw_member.user_id=params[:userId]
        crw_member.member_aadhaar_id = params[:aadhaar_number]
        crw_member.member_aadhaar_ref_id = params[:reference]
        crw_member.member_ration_card_number = params[:ration_card]
        crw_member.member_name = params[:owner_name]
        crw_member.memner_father_name = params[:father_name]
        crw_member.member_age = params[:age]
        crw_member.member_gender = params[:gender]
        crw_member.job_title = params[:job_type]
        crw_member.member_mobile_number = params[:mobile_number]
        crw_member.member_social_status = params[:social_status]
        crw_member.member_mfid = params[:mfid]
        crw_member.bank_account_number = params[:bank_account_number]
        crw_member.bank_ifsc = params[:ifsc_code]
        crw_member.bank_name = params[:bank_name]
        crw_member.branch_name = params[:branch_name]
        crw_member.member_email = params[:email_id]
        crw_member.member_date_of_birth = params[:date_of_birth].to_date
        crw_member.member_employement_status = params[:employment_status]
        if params[:bank_name] == "Others"
            if !params[:bank_others_name].blank?
                bank = Bank.create(:bank_name => params[:bank_others_name])
                vessel_detail.bank_details = bank.bank_name
            end
        end
        if crw_member.save
            json_response({:success => true,:message => "Upadated Successfully"})
        else
            json_response({:success => false,:message => crw_member.errors.full_messages})
        end
    end

    def create_crew_user
        vessel = VesselDetail.where(:id => params[:id]).first
        puts vessel.inspect
        puts "XXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
        crw_mem = VesselCrewMember.new
        crw_mem.vessel_detail_id = vessel.id
        crw_mem.vessel_reg_no = vessel.boat_id
        crw_mem.user_id=params[:userId]
        crw_mem.member_aadhaar_id = params[:aadhaar_number]
        crw_mem.member_aadhaar_ref_id = params[:reference]
        crw_mem.member_ration_card_number = params[:ration_card]
        crw_mem.member_name = params[:owner_name]
        crw_mem.memner_father_name = params[:father_name]
        crw_mem.member_age = params[:age]
        crw_mem.member_gender = params[:gender]
        crw_mem.job_title = params[:job_type]
        crw_mem.member_mobile_number = params[:mobile_number]
        crw_mem.member_social_status = params[:social_status]
        crw_mem.member_mfid = params[:mfid]
        crw_mem.bank_account_number = params[:bank_account_number].to_s
        crw_mem.bank_ifsc = params[:ifsc_code]
        crw_mem.bank_name = params[:bank_name]
        crw_mem.branch_name = params[:branch_name]
        crw_mem.member_email = params[:email_id]
        crw_mem.member_date_of_birth = params[:date_of_birth].to_date
        crw_mem.member_employement_status = params[:employment_status]
        if params[:bank_name] == "Others"
            if !params[:bank_others_name].blank?
                bank = Bank.create(:bank_name => params[:bank_others_name])
                vessel_detail.bank_details = bank.bank_name
            end
        end
        if crw_mem.valid?
            crw_mem.save
            json_response({:success => true,:message => vessel.vessel_crew_members})
        else
            json_response({:success => false,:message => crw_mem.errors.full_messages})
        end
    end


    def audit
         usrs = VesselUser.where(:created_at => params["report_from_date"].to_date.beginning_of_day..params["report_to_date"].to_date.end_of_day)
         json_response({:success => true,:message => usrs}) 
    end

    private
    
    def get_flc
        @flc = FishLandingCenter.where(:id => params[:fish_landing_center_id]).first
    end
end
