Rails.application.routes.draw do
  get 'show_pages/show'
  get 'show_pages/help'
  get 'show_pages/about'
  # root 'application#hello
  namespace :api do
    namespace :v1 do
      post 'existence', to: 'existence#post'
    end
  end
  root to: 'show_pages#show'
end
