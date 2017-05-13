Spree::Core::Engine.routes.draw do
  resources :ajax_wishlist, only: [] do
    collection do
      post :toggle
    end
  end
end

