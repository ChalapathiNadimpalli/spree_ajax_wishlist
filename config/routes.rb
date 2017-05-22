Spree::Core::Engine.routes.draw do
  resources :wishlists, controller: 'ajax_wishlists', only: [:index] do
    collection do
      get :in_wishlist
      post :toggle
    end
  end
end

