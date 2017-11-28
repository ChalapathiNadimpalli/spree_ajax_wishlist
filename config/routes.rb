Spree::Core::Engine.routes.draw do
  resources :wishlists, controller: 'ajax_wishlists', only: [:index] do
    collection do
      get :in_wishlist
      post :toggle
    end
  end

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :wishlists, only: %i(index) do
        post :toggle, on: :collection
        get :in_wishlist, on: :collection
      end
    end
  end
end

