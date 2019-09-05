class SerpController < ApplicationController
    
    def serp_response
        @res = {}
        msg = []
        if params[:Aadhar_id].blank?
            msg << "Aadhaar is Mandatory  "
        end
        
        if params[:Uid].blank?
            msg << "Uid is Mandatory  "
        end
        
        if params[:Key].blank?
            msg << "Key is Mandatory"
        end
        unless params[:Aadhar_id].blank? && params[:Uid].blank? && params[:Key].blank?
            @res["Status"] = 100
            @res["Message"] = "Success"
            @res["Aadhar id"] = params[:Aadhar_id]
            @res["Member Name"] = 'Test User Woman'
            @res["DB Status"]  = "Active"
            @res["Shg ID"] = "123456"
            @res["VO ID"] = "503"
            @res["Contact No"] = "9985324862"
            @res["Spouse Father Name"] =" Test Father"
            @res["Shg Name"] = "Test Sub Name"
            @res["Vo Name"] = "Vijayawada"
        else
            @res["Status"] = "200"
            @res["Message"] = "Failure  "
            @res["errors"] = msg
         end
        json_response(@res)
    end


end
