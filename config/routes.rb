Rails.application.routes.draw do
  get 'searches/new'

  get 'searches/create'

  get 'searches/show'

  get 'posts/index'

  get 'posts/show'

  get 'posts/new'

  get 'posts/create'

  get 'posts/destroy'

  get 'posts/edit'

  get 'posts/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
