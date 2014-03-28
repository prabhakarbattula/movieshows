Rails.application.routes.draw do

  get 'crews/new'

  get 'crews/create'

  get 'crews/edit'

  get 'crews/update'

  get 'crews/show'

  get 'crews/index'

  get 'crews/delete'

  root "theatres#root"

  resources :theatres do

    member do
      get 'spot'
    end

    collection do
      get 'search'
      get 'display'
      get 'root'
    end

  end

  resources :movies do

    member do
      get 'spot'
    end

    collection do
      get 'search'
      get 'display'
    end

  end

  resources :casts do

    collection do
      get 'search_hero'
      get 'display_hero'
      get 'search_heroin'
      get 'display_heroin'
    end

  end

  resources :shows, :crews

  #get "shows/new/:id" => "shows#new", as: :new_show_to_theatre



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
