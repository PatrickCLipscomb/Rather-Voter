Rails.application.routes.draw do
  root :to => 'questions#index'
  resources :questions do
    resources :comments
    resources :answers do
      patch 'crop', on: :member
    end
  end
  resources :answers, except: [:show, :index, :edit, :create, :update, :destroy, :new] do
    post 'vote', on: :member
  end
end
