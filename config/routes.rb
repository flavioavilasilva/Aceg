Findapet::Application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'

  resources :feira_adocoes


  resources :endereco_oferta_voluntariado


  resources :vigencia_oferta


  resources :oferta_voluntariado
  
  
  resources :oferta_voluntariado_candidatos
  
  
  #match "/oferta_voluntariado_candidato" => "oferta_voluntariado_candidatos#candidatar_se"


  resources :racas


  resources :cancelamento_adocoes


  match '/rate' => 'rater#create', :as => 'rate'

  resources :artigos
  
  resources :artigos do
    resources :comentario_artigos
  end


  resources :tipo_perfis


  resources :endereco_perfis


  resources :perfis
  
  
  #Admin
  root :to => "home#index"

  devise_for :usuarios, :controllers => { :omniauth_callbacks => "devise/usuarios/omniauth_callbacks",
    :registrations => "devise/usuarios/registrations", :sessions => "devise/usuarios/sessions"}
    
  
  resources :galeria_animais


  resources :status_confirmacao_doadores


  resources :prioridade_adocoes


  resources :confirmacao_adocoes


  resources :adocao_animais
  
  
  match "/minhas_adocoes" => "minhas_adocoes#index" 
  
  match "/minhas_doacoes" => "minhas_doacoes#index" 


  resources :adotando_animais


  resources :doador_animais


  resources :porte_animais


  resources :tipo_animais


  resources :status_animais


  resources :animais


  resources :status_confirmacao_adotandos


  resources :adocao_confirmacao_chaves


  resources :adocao_animals


  resources :idades


  resources :generos


  resources :indicacoes


  resources :estabelecimentos


  resources :home


  resources :status_adotandos


  resources :estados


  resources :cidades


  resources :porte_animals


  resources :status_ativs


  resources :tipo_galeria
  

  resources :preferencia
  
  
  resources :local_estado_cidade , :only => [:index,:create]
  
  
  match "/local_estado_cidade" => "local_estado_cidade#index"
  
  
  match 'sessions_localizacao/estado_cidade_acesso_usuario', to: 'sessions_localizacao#estado_cidade_acesso_usuario'
  
  
  match "/cidades_by_estado" => "cidades#cidades_by_estado"
  
  
  match "/find_by_nome_cidade" => "cidades#find_by_nome_cidade"
  
  
  match "/find_by_sigla_estado" => "estados#find_by_sigla_estado"
  
  
  match '/enderecos/busca_por_cep/:cep' => 'enderecos#busca_por_cep'
  

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
  root :to => 'home#index'
  #root :to => 'local_estado_cidade#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
