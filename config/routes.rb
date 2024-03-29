Rails.application.routes.draw do
  resources :records
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
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

  devise_for :users,
      path_names: {sign_in: 'login', sign_out: 'logout'},
      controllers: {confirmations: 'users/confirmations',
                    passwords: 'users/passwords',
                    registrations: 'users/registrations',
                    sessions: 'users/sessions',
                    unlocks: 'users/unlocks'},
      path: '/'

  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_user
    end

    unauthenticated :user do
      root 'users/sessions#new', as: :unauthenticated_user
    end

    authenticate :user do
      get 'users/edit', to: 'users/registrations#edit', as: :edit_profile
      match 'users', to: 'users/registrations#update', as: :update_profile, via: [:patch, :put]
    end
  end


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
