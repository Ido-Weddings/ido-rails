Rails.application.routes.draw do

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
      resources :enterprises
      root to: 'home#index'
      get '/home', to: 'home#index'
      get '/category_enterprise/:id' => 'enterprises#show_categories'
      post '/signup_user' => 'users#create'
      post '/signin_user' => 'users#login'
      get '/get_user_preference/:id' => 'users#get_user_preference'
      put '/update' => 'users#update'
      put '/update_preferences' => 'users#update_preferences'
      post '/user_phones' => 'users#checkusers'
      post '/users/follow_provider' => 'users#follow_provider'
      post '/users/unfollow_provider' => 'users#unfollow_provider'
      get '/users/enterprises/:id_user' => 'users#show_providers_by_user'
      post '/search_enterprises' => 'enterprises#search_enterprise'
      post '/evaluate_provider' => 'rating#create'
      post '/users/profile_picture' => 'users#save_profile_picture'
      get '/enterprises_best_rated/:id_category' => 'enterprises#search_ranking_enterprises'
      post '/users/advise_provider' => 'users#advise_provider'
      get '/users/enterprises_advised/:id_user' => 'users#show_providers_advised_by_user'
      get '/enterprise/messages/:id_enterprise' => 'recomendation_message#show'
      post '/enterprise/create_recomendation' => 'recomendation_message#create'
      get '/login' => 'sessions#new'
      post '/login' => 'sessions#create'
      get '/logout' => 'sessions#destroy'
      put '/update_picture' => 'enterprises#pick_image'

      resources :enterprises
end
