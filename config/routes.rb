PersonalTrainer::Application.routes.draw do
  
  match '/administrador' => 'administrador/admin_session#new'
  match '/administrador/create' => 'administrador/admin_session#create', via: :post
  match '/administrador/destroy' => 'administrador/admin_session#destroy', via: :get
  
  namespace :administrador do
  # Directs /admin/products/* to Admin::ProductsController
  # (app/controllers/admin/products_controller.rb)
    resources :admins
    resources :families
    resources :members
    resources :contato
    match "fee" => 'fee#index'
    match "fee/aprovar/:id" => 'fee#aprovar'
    match "fee/reprovar/:id" => 'fee#reprovar'
    
    match "homemessage" => 'homemessage#index'
    match "homemessage/aprovar/:id" => 'homemessage#aprovar'
    match "homemessage/reprovar/:id" => 'homemessage#reprovar'
    
  end
  match "album/:page_num" => 'site/page#album', as: :album
  #Confirmar presença
  match "confirme-sua-presenca" => 'site/presence#index', via: :get, as: :presence
  match "confirme-sua-presenca" => 'site/presence#members', via: :post, as: :presence
  #Buscar convidado por nome
  match "confirme-sua-presenca/:parametrize_name" => 'site/presence#family', via: :get, as: :family
  #Confirmar/cancelar presença
  match "confirme-sua-presenca/:parametrize_name/confirmar" => 'site/presence#confirm', via: :get, as: :family_member_confirm
  match "confirme-sua-presenca/:parametrize_name/cancelar" => 'site/presence#cancel', via: :get, action: :delete, as: :family_member_cancel
  #adicionar acompanhante
  match "confirme-sua-presenca/:parametrize_name/:family/adicionar-acompanhante" => 'site/presence#add_follower', via: :get, as: :add_follower
  
  match "cotas-de-lua-de-mel" => 'site/page#cotas', via: :get, as: :cotas
  match "local" => 'site/page#local', via: :get, as: :locations
  match "contato" => 'site/contato#index', via: :get, as: :contato
  match "contato" => 'site/contato#submit', via: :post
  match "submit" => 'site/page#submit'
  match "submit_fee" => 'site/page#submit_fee'
  
  root :to => 'site/page#index'
  
# The priority is based upon order of creation:
# first created -> highest priority.

# Sample of regular route:
#   match 'products/:id' => 'catalog#view'
# Keep in mind you can assign values other than :controller and :action

# Sample of named route:
#   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
# This route can be invoked with purchase_url(:id => product.id)

# Sample resource route (maps HTTP verbs to controller actions automatically):
#   resources :products

# Sample resource route with options:
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

# Sample resource route with sub-resources:
#   resources :products do
#     resources :comments, :sales
#     resource :seller
#   end

# Sample resource route with more complex sub-resources
#   resources :products do
#     resources :comments
#     resources :sales do
#       get 'recent', :on => :collection
#     end
#   end

# Sample resource route within a namespace:
#   namespace :admin do
#     # Directs /admin/products/* to Admin::ProductsController
#     # (app/controllers/admin/products_controller.rb)
#     resources :products
#   end

# You can have the root of your site routed with "root"
# just remember to delete public/index.html.
# root :to => 'welcome#index'

# See how all your routes lay out with "rake routes"

# This is a legacy wild controller route that's not recommended for RESTful applications.
# Note: This route will make all actions in every controller accessible via GET requests.
# match ':controller(/:action(/:id(.:format)))'
end
