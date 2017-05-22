module Spree::WishlistHelper
  def user_wished_product_ids(products, user)
    return [] unless user && products.present?
    Spree::Wishlist.active.where(product_id: products.map(&:id), user_id: user.id).pluck(:product_id)
  end
end
