class Spree::Api::V1::WishlistsController < Spree::Api::BaseController
  def index
    @products = Spree::Wishlist.get_products(current_api_user.id)
  end

  def in_wishlist
    product_ids = params[:product_ids]
    @product_ids = Spree::Wishlist.active.where(user_id: current_api_user.id, product_id: product_ids).pluck(:product_id)
  end

  def toggle
    product = Spree::Product.where(id: params[:product_id]).first
    available = product&.available? || false

    if available
      wishlist = Spree::Wishlist.where(user_id: current_api_user.id, product_id: product.id).first
      status = params[:active] == 'true' || wishlist.blank? ? true : !wishlist.active

      wishlist = Spree::Wishlist.new(product_id: product.id, user_id: current_api_user.id) unless wishlist
      wishlist.active = status
      wishlist.save
      render json: {}, status: :ok
    else
      render json: { error: 'Product not found' }, status: :unprocessable_entity
    end
  end

  private

  def active_status
    return (params[:active].to_s == 'true' ? true : false) if params[:active]
    @wishlist ? !@wishlist.active : true
  end
end