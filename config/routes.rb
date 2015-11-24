Rails.application.routes.draw do
  get 'home/index'

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
      root to: 'home#index'
      get '/home', to: 'home#index'
      get '/category_enterprise/:id' => 'category_enterprise#show'
      post '/signup_user' => 'users#create'
      post '/signin_user' => 'users#login'
      put '/update' => 'users#update'
      get '/get_user_preference' => 'users#get_user_preference'
      put '/update_preferences' => 'users#update_preferences'
      post '/user_phones' => 'users#checkusers'
      post '/users/follow_provider' => 'users#follow_provider'
      post '/users/unfollow_provider' => 'users#unfollow_provider'
      get '/users/enterprises/:id' => 'users#show_providers_by_user'
      post '/search_enterprises' => 'category_enterprise#search_enterprise'
      post '/evaluate_provider' => 'rating#create'
end
