class VillagesController < ApplicationController
    
    before_action :get_mandal
    
    def index
        @villages = @mandal.villages
        json_response(@villages)
    end
    
    private
    
    def get_mandal
        @mandal = Mandal.where(:id => params[:mandal_id]).first
    end
end
