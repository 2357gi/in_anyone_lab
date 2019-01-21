Rails.application.routes.draw do
  get 'show_pages/show'
  get 'show_pages/help'
  root 'application#hello'
end
