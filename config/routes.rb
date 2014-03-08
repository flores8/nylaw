Nylaw::Application.routes.draw do
  root 'pages#home'
  get 'about' => "pages#about"
  get 'services' => "pages#services"
  match 'contact', to: 'contact#new', via: :get
  match 'contact', to: 'contact#create', via: :post
  get 'thanks' => "pages#thanks"

  # Spanish Version of Site
  get 'sp' => "spanish#home"
  get 'sp/about' => "spanish#about"
  get 'sp/services' => "spanish#services"
  match 'sp/contact', to: 'sp_contact#new', via: :get
  match 'sp/contact', to: 'sp_contact#create', via: :post
  get 'sp/thanks' => "spanish#thanks"


  #match 'contact', to: 'pages#contact', via: [:get, :post]
  #resources :contact, except: [:update, :destroy, :show, :edit]




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

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
