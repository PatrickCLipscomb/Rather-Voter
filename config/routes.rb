Rails.application.routes.draw do
  resources :questions do
    resources :answers, except: [:show]
  end
  resources :answers, except: [:show, :index, :edit, :create, :update, :destroy, :new] do
    post 'vote', on: :member
  end
end
