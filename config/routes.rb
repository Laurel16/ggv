Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
  devise_for :users
  get 'pages/home'
  root to: 'pages#home'
  get 'competence', to: 'pages#competence', as: :competence
  get 'lawyers', to: 'pages#lawyers', as: :lawyers
  get 'news', to: 'pages#news', as: :news
   get 'contact', to: 'pages#contact', as: :contact

resources :posts
resources :lawyers




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
