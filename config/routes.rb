Spree::Core::Engine.routes.draw do
  resources :ajax_wishlists, only: [] do
    collection do
      get :in_wishlist
      post :toggle
    end
  end
end

