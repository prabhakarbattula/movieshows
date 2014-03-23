Rails.application.routes.draw do


  root "theatres#root"

  get 'movies/search' => 'movies#search', as: :search_movie
  get 'movies/display' => 'movies#display', as: :display_movie
  get 'theatres/search' => 'theatres#search', as: :search_theatre
  get 'theatres/display' => 'theatres#display', as: :display_theatre
  get 'theatres/root' => 'theatres#root', as: :root_theatre
  get 'theatres/spot/:id' => 'theatres#spot', as: :spot_theatre
  get 'movies/spot/:id' => 'movies#spot', as: :spot_movie

  resources :shows, :theatres, :movies, :casts

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
