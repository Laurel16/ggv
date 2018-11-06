Rails.application.routes.draw do
  get 'pages/home'
  root to: 'pages#home'
  get 'competence', to: 'pages#competence', as: :competence
  get 'lawyers', to: 'pages#lawyers', as: :lawyers
  get 'news', to: 'pages#news', as: :news
   get 'contact', to: 'pages#contact', as: :contact




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
