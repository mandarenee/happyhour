Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#home', as: :home

  get 'inventory' => 'inventory#index', as: :inventory_list
  get 'inventory/champagne_bar' => 'inventory#champagne_bar', as: :champagne_bar
  get 'inventory/champagne_barback' => 'inventory#champagne_barback', as: :champagne_barback
  get 'inventory/companion_sets' => 'inventory#companion_sets', as: :companion_sets
  get 'inventory/julep_bar' => 'inventory#julep_bar', as: :julep_bar
  get 'inventory/julep_barback' => 'inventory#julep_barback', as: :julep_barback

  get 'accessories' => 'accessories#index', as: :accessories_list
  get 'accessories/bar_serviceware' => 'accessories#bar_serviceware', as: :bar_serviceware
  get 'accessories/floral_vases' => 'accessories#floral_vases', as: :floral_vases
  get 'accessories/framed_signs' => 'accessories#framed_signs', as: :framed_signs
  get 'accessories/word_signs' => 'accessories#word_signs', as: :word_signs

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
