class Spree::Wishlist < ActiveRecord::Base
  belongs_to :user, class_name: Spree.user_class
  belongs_to :product

  scope :active, -> { where(active: true) }

  def self.get_products(user_id)
    products = Spree::Product.spree_base_scopes.active
    products = products.joins(:wishlists)
                    .where(spree_wishlists: { active: true, user_id: user_id })
    products = products.preload(master: :prices)
    products = products.preload(master: :images)
    products = products.order('spree_wishlists.updated_at desc')
    products
  end

end