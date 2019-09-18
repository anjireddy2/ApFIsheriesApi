Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    resources :districts do
        resources :mandals do
            collection do
                get 'flc_mandals'
            end
            resources :panchayats
            resources :villages
            resources :water_bodies do
                collection do
                    get 'search'
                end
            end
            resources :fish_landing_centers do
               resources :vessel_details do
                collection do
                    get 'search'
                     post 'create'
                     get 'edit_vessel'
                    
                end
                   member do
                       delete 'destroy'
                       get 'edit'
                      
                   end
            end 
            end
            
        end
    end
    resources :vessel_details do
        member do
            get 'edit_vessel'
            put 'update_vessel'
            delete 'delete_crew_member'
            post 'create_crew_user'
            get 'edit_crew_member'
            post 'update_crew_member'
        end
         collection do
             get 'verify_aadhaar'
             get 'verify_ration_card'
             get 'crew_list'
             post 'update_crew_member'
            #  delete 'delete_crew_member'
         end
    end
    resources :serp do
        collection do
            get 'serp_response'
        end
    end
    resources :user do
        collection do
            post 'login'
            post 'logout'
            post 'forgot_pwd'
        end
    end

    resources :society_registrations do
        collection do
            post 'create'
            post 'add_members'
            delete 'delete_member'
            post 'verify_vessel'
            get 'get_society_details'
            post 'update_society_member'
            get 'edit_member'
            
        end
        member do
            get 'society_members'
            delete 'delete_member'
            delete 'delete_society'
        end
    end

end
