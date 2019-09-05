class VesselDetailsController < ApplicationController
    
    before_action :get_flc
    
    def index

         @vessel_details = @flc.vessel_details
        res = []
        @vessel_details.each do |vessel|
#            raise water_body.water_body_detail.inspect
            res  << {:id => vessel.id,:district_name => vessel.district.district_name,:mandal_name => vessel.mandal.mandal_name,:flc_name => vessel.fish_landing_center.flc_name,:vessel_owner_name => vessel.owner_name,:vessel_number => vessel.boat_id,:status => vessel.deleted ? "In-Active" : "Active",:boat_type => vessel.boat_type,:license_renewal_date => vessel.license_renewed_date,:license_valid_upto => vessel.license_valid_upto,:aadhaar_no => vessel.aadhaar_no,:mobile_number => vessel.mobile_number,:bank_account_number => vessel.bank_account_number,
                :ration_card_number => vessel.ration_card_number}
        end
        json_response(res)
        
    end
    
    def create
        # ""=>"", "father_name"=>"", "aadhaar_number"=>"", "mobile_number"=>"", "bank_account_number"=>"", "ration_card"=>"", "ifsc_code"=>"", "bank_name"=>"", "email_id"=>"", "eligible"=>"", "vessel_number"=>"", "licence_renewal_date"=>"", "licence_valid_date"=>"", "mfid"=>"", "remarks"=>"", "district_id"=>"undefined", "mandal_id"=>"undefined", "fish_landing_center_id"=>"undefined", "vessel_detail"=>{"father_name"=>"", "mobile_number"=>"", "bank_account_number"=>"", "ifsc_code"=>"", "email_id"=>""
        # res = []
        puts params.inspect
        vessel_detail = VesselDetail.new()
        
        vessel_detail.district_id=params[:district_id]
        vessel_detail.mandal_id=params[:mandal_id]
        vessel_detail.fish_landing_center_id=params[:fish_landing_center_id]
        vessel_detail.user_id=params[:userId]
        # vessel_detail.owner_id=params[:]
        vessel_detail.owner_name=params[:vessel_name]
        vessel_detail.boat_id=params[:vessel_number]
        vessel_detail.boat_type=params[:vessltype]
        vessel_detail.license_renewed_date=params[:licence_renewal_date]
        vessel_detail.license_valid_upto=params[:licence_valid_date]
        vessel_detail.father_name=params[:father_name]
        vessel_detail.aadhaar_no=params[:aadhaar_number]
        vessel_detail.mobile_number=params[:mobile_number]
        vessel_detail.bank_account_number=params[:bank_account_number]
        vessel_detail.ration_card_number=params[:ration_card]
        vessel_detail.ifsc_code=params[:ifsc_code]
        vessel_detail.mfid_number=params[:mfid]
        vessel_detail.bank_details=params[:bank_name]
        vessel_detail.email_id=params[:email_id]
        vessel_detail.deleted=false
        # vessel_detail.creation_level=params[:]
        vessel_detail.is_eligible=true
        # vessel_detail.rejection_reason_id=params[:]
        vessel_detail.comment=params[:remarks]
                
       if vessel_detail.valid?
        vessel_detail.save
            res = {:success => true,:message => "Vessel created Succesfully"}
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
        vessel_detail.license_renewed_date=params[:licence_renewal_date]
        vessel_detail.license_valid_upto=params[:licence_valid_date]
        vessel_detail.father_name=params[:father_name]
        vessel_detail.aadhaar_no=params[:aadhaar_number]
        vessel_detail.mobile_number=params[:mobile_number]
        vessel_detail.bank_account_number=params[:bank_account_number]
        vessel_detail.ration_card_number=params[:ration_card]
        vessel_detail.ifsc_code=params[:ifsc_code]
        vessel_detail.mfid_number=params[:mfid]
        vessel_detail.bank_details=params[:bank_name]
        vessel_detail.email_id=params[:email_id]
        vessel_detail.deleted=false
        # vessel_detail.creation_level=params[:]
        vessel_detail.is_eligible=true
        # vessel_detail.rejection_reason_id=params[:]
        vessel_detail.comment=params[:remarks]
        puts "XXXXXXXXXXXXXXXXXXXXXX"
        if vessel_detail.valid?
            vessel_detail.save
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

    end
    private
    
    def get_flc
        @flc = FishLandingCenter.where(:id => params[:fish_landing_center_id]).first
    end
end
