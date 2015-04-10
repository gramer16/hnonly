Rails.application.routes.draw do
 

  

  scope "(:locale)", locale: /fr|en/ do
  
  resources :plans 
       
  resources :subscriptions
   

  resources :interiordesigners do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :countertops do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :customcabinets do
    collection do
      get 'search'
      get :autocomplete
    end
  end


  resources :cashbuyers do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :movingcompanies do
    collection do
      get 'search'
      get :autocomplete
    end
  end


  resources :poolrepairs do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :poolcleaners do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :solarscreens do
     collection do
      get 'search'
      get :autocomplete
    end
  end


  resources :windows do
    collection do
      get 'search'
      get :autocomplete
    end
  end


  resources :termiteinspectors do
    collection do
      get 'search'
      get :autocomplete
    end
  end


  resources :taxspecialists do
     collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :titlecompanies do
     collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :septics do
    collection do
      get 'search'
      get :autocomplete
    end
  end


  resources :securities do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :stagings do
    collection do
      get 'search'
      get :autocomplete
    end
  end


  resources :rentalproperties do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :accountants do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :lawyers do
     collection do
      get 'search'
      get :autocomplete
    end
  end


  resources :real_estatefirms do 
    collection do
      get 'search'
      get :autocomplete
    end
  end


  resources :realtors do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :roofings do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :privatebanks do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :privatefirms do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :propertymanagementfirms do
    collection do
      get 'search'
      get :autocomplete
    end
  end


  resources :paintings do
     collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :plumbings do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :molds do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :mortgages do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :landsurveyors do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :landscapings do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :insulations do
     collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :hardmoneys do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :homeinspectors do
    collection do
      get 'search'
      get :autocomplete
    end
  end


  resources :generalcontractors do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :floorings do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :framings do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :drywalls do
      collection do
      get 'search'
      get :autocomplete
    end
  end


  resources :orders
  
  devise_for :users
  resources :subscriptionpackages do
    resources :orders
  end


  resources :asphalts do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  resources :airconditioners do
    collection do
      get 'search'
      get :autocomplete
    end
  end  

  resources :services do
    collection do
      get 'search'
      get :autocomplete
    end
  end


  resources :arquitects do
    collection do
      get 'search'
      get :autocomplete
    end
  end

  

  resources :commercialpropertiesforsales do
    collection do
      get 'search'
    end
  end
  
  resources :service_types

  resources :residentials do
    collection do
      get 'search'
      get 'bedrooms'
      get :autocomplete
    end
  end

  get 'pages/home'

  get 'pages/membership'
  get 'pages/privacypolicy'
  get 'pages/termsofuse'

  get 'pages/contactus'
  get 'pages/realestateservices'
  get 'seller' => "subscriptionpackages#seller"
  get 'sales' => "orders#sales"
  get 'purchases' => "orders#purchases"



  root 'pages#home'

end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
