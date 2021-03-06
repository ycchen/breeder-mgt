Showtrac::Application.routes.draw do
  
  
  resources :services

  resources :statuses

  resources :pregnancies do
    resources :matings
    resources :litters
  end

  resources :colors

  resources :photos

  resources :payment_statuses

  # resources :payments

  resources :sales do
    resources :payments
  end

  resources :payment_types

  resources :customers

  resources :dog_expenses

  resources :charges

  
  devise_for :users, :controllers => { :registrations => 'registrations' }
  devise_scope :user do
    # get 'users/new_admin' => 'users/registrations#new_admin'
    # post 'users/create_admin' => 'users/registration#create_admin'
  end
  resources :users, :only =>[:index, :update, :new, :create, :edit, :destroy]

  resources :show_entries

  resources :dogs

  resources :shows

  get 'pregnancies_rpt' => 'reports#pregnancies'
  get 'dogs_rpt' => 'reports#dogs'
  get 'sales_rpt' => 'reports#sales'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
  
  match '*path(.:format)', :to => 'application#not_found', via: :all
end
