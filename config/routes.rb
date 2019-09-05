Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    resources :districts do
        resources :mandals do
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
            # post 'create'
        end
        # collection do
        #     put 'update_vessel'
        # end
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
        end
    end

    resources :society_registrations do
        collection do
            post 'create'
            post 'add_members'
        end
    end

end
