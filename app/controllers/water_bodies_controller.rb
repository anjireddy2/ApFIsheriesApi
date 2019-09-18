class WaterBodiesController < ApplicationController
    
    before_action :get_mandal
    
    def index
#        @res = {}
#        @res[:Status] = "Success"
        @res = @mandal.water_bodies
       json_response(@res)
    end
    
    
    def search
        
        @water_bodies = WaterBody.where("district_id = ? and mandal_id =?",params[:district_id],params[:mandal_id])
        res = []
        @water_bodies.each do |water_body|
            res  << {:id => water_body.id, 
                    :water_body_name => water_body.water_body_name,
                    :twsa => water_body.water_body_detail.twsa,
                    :ewsa => water_body.water_body_detail.ewsa,
                    :seasonality => water_body.water_body_detail.seasonality.seasonality_type,
                    :water_body_type => water_body.water_body_detail.water_body_type.type_of_water_body,
                    :ownership => water_body.water_body_detail.water_body_ownership.type_of_ownership}
        end
        json_response(res)
    end
    
    private
    
    def get_mandal
        @mandal = Mandal.where(:id => params[:mandal_id]).first
    end
end

 