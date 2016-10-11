Rails.application.routes.draw do
  root 'blog/posts#index'

  namespace :author do
    resources :posts
  end

  scope '/blog' do
    get 'about'      => 'blog/pages#about', as: :about
    get 'contact'    => 'blog/pages#contact', as: :contact
    get 'posts'      => 'blog/posts#index', as: :posts
    get 'posts/:id' => 'blog/posts#show', as: :post
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
