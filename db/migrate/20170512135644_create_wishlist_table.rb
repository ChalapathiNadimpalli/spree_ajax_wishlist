class CreateWishlistTable < ActiveRecord::Migration
  def self.up
    create_table :spree_wishlists do |t|
      t.references :user
      t.references :product
      t.boolean :active, default: true, null: false
      t.timestamps null: false
    end

    add_index :spree_wishlists, :user_id
    add_index :spree_wishlists, :product_id
    add_index :spree_wishlists, :active
  end

  def self.down
    drop_table :spree_wishlists
  end
end
