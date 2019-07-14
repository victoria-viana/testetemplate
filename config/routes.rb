Rails.application.routes.draw do
  resources :estoque_reboques
  resources :reboques
  resources :estoques
  resources :frota
  resources :clientes
  resources :veiculos
  resources :colaboradors
  resources :tipo_entradas
  resources :bancos
  resources :cidades
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
