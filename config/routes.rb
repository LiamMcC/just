Rails.application.routes.draw do
  resources :orders do 
    resources:orderitems
  end

  devise_for :users do resources :orders end
  get '/checkout' => 'cart#createOrder'
  
  get '/guestcheckout' => 'cart#guestcreateOrder'
  
  get '/cart' => 'cart#index' 

  get "/cart/:id" => 'cart#add'
  root 'static_pages#home'
  
  
  get '/:name/:id' => 'static_pages#individual'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/blog'
  
  get '/completeorder/paid/:id' => 'static_pages#paid'
  

  resources :shows
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
