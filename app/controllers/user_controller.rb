class UserController < ApplicationController

    def login
        puts params.inspect
        # res = []
        user = User.where("mobile_no = ? and password = ?",params[:mobile_number],params[:password].downcase).first
        if !user.blank?
            res = {:success => true,:message => "Logged in successfully",:user_id => user.id}
        else
            res = {:success => false,:message => "Invalid credentials"}
        end
        json_response(res)
    end
    
    def logout
        user = User.where(:id => params[:user_id]).first
        if !user.blank?
            res = {:success => true,:message => "Successfully logout"}
        else
            res = {:success => false,:message => "Invalid credentials"}
        end
        json_response(res)
    end

    def forgot_pwd
        usr = User.where(:mobile_no => params[:my_input]).first
        if usr
            usr.update(:password => params[:new_pwd])
            json_response({:success => true,:message => "Password changed successfully"})
        else
            json_response({:success => false,:message => "Invalid mobile number"})
        end
    end
end
