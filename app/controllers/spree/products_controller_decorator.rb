module Spree
  ProductsController.class_eval do
    helper Spree::WishlistHelper

  end
end

