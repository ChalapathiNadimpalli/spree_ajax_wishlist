module Spree
  Product.class_eval do
    has_many :wishlists, :class_name => 'Spree::Wishlist'

  end
end

