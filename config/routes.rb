Rails.application.routes.draw do
  resources :rooms do
    resources :comments
  end
end
