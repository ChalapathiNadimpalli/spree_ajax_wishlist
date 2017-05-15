class Spree::AjaxWishlistsController < Spree::BaseController

  def index
  end

  def in_wishlist
    active = valid_product && spree_current_user.present?
    active = Spree::Wishlist.active.where(user_id: spree_current_user.id, product_id: params[:product_id]).exists? if active
    render json: { result: active }
  end

  def toggle
    return unless valid_product && user_signed_in

    @product_id = params[:product_id]

    @wishlist = Spree::Wishlist.where(user_id: spree_current_user.id, product_id: @product_id).first

    @active = active_status

    if @wishlist
      @wishlist.active = @active
    else
      @wishlist = Spree::Wishlist.new(product_id: @product_id, user_id: spree_current_user.id, active: @active)
    end

    @error = Spree.t('wishlist.unable_to_mark') unless @wishlist.save
  end

  private

  def active_status
    return (params[:active].to_s == 'true' ? true : false) if params[:active]
     @wishlist ? !@wishlist.active : true
  end

  def valid_product
    valid = Spree::Product.where(id: params[:product_id]).exists?
    @error = Spree.t('wishlist.invalid_product') unless valid
    valid
  end

  def user_signed_in
    store_location_for(:user, request.referer) unless spree_current_user
    spree_current_user.present?
  end
end
