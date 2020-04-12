Rails.application.routes.draw do
  
  root 'static_pages#home'
  
  
  get '/:name/:id' => 'static_pages#individual'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/blog'

  resources :shows
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
