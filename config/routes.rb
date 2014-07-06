Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'home#index'


  resources :subcategories, :only => [:show, :index]
  resources :categories, :only => [:show, :index]

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'privacy' => 'home#privacy'
  get 'terms' => 'home#terms'

  get 'stores' => 'stores#index'
  get 'stores/kroger' => 'stores#kroger'
  get 'stores/wholefoods' => 'stores#wholefoods'
  get 'stores/costco' => 'stores#costco'


  get 'items' => 'items#index'
  get 'items/new' => 'items#new'
  post 'items' => 'items#create'
  get 'items/:id' => 'items#show'
  resources :items, :only => [:edit, :update]

  post 'items/:id/update' => 'items#update'

  post 'stores/add_to_cart/:id' => 'carts#edit'

  get 'carts/:id' => 'carts#show'

  # get 'categories/:id' => 'categories#show'



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
