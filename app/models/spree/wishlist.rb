class Spree::Wishlist < ActiveRecord::Base
  belongs_to :user, class_name: Spree.user_class
  belongs_to :product

  scope :active, -> { where(active: true) }
end