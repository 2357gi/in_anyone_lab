Rails.application.routes.draw do
  get 'show_pages/show'
  get 'show_pages/help'
  get 'show_pages/about'
  # root 'application#hello'
  root to: 'show_pages#show'
end
