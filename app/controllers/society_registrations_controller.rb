class SocietyRegistrationsController < ApplicationController
# layout 'application'
    def index
        res = []
        societies = SocietyRegistration.all#where("district_id = ? and mandal_id = ? and fish_landing_center = ?",params[:district_id],params[:mandal_id],params[:flc_id])
        societies.each do |society|
            puts society.inspect
            res << {:id => society.id,:district_name => society.district.district_name,
                    :mandal_name => society.mandal.mandal_name,
                    :flc_id => society.fish_landing_center.flc_name,
                    :society_name => society.society_name,
                    :society_reg_no => society.society_reg_no,
                    :ncdc => society.ncdc}
        end
        json_response(res)
    end

    def create
        # ActiveRecord::Base.transaction do
        society_reg = SocietyRegistration.new
        society_reg.district_id = params[:district_name]
        society_reg.mandal_id = params[:mandal]
        society_reg.fish_landing_center_id = params[:flc]
        society_reg.society_name = params[:society_name]
        society_reg.society_reg_no = params[:society_reg_no]
        society_reg.ncdc = params[:ncdc_reg] == "yes" ? true : false
        
        if society_reg.valid?
            res = {:success => true,:message => "Society created successfully"}
            society_reg.save
           
        else
            res = {:success => false,:message => society_reg.errors.full_messages  }
        end
    # end
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
            society_member.member_name = params[:vessel_name]
            # society_member.age = params[:age]
            society_member.member_caste_cert_no = params[:certificate_number]
            society_member.member_aadhaar_no = params[:aadhaar_number]
            # society_member.
            if society_member.valid?
                res = {:status => true,:message => "Successfully added society member"}
                society_member.save
        else
            res = {:status => false,:message => society_member.errors.full_messages}
        end
        json_response(res)
    end

    def delete
    end

    def delete_member
    end

end
