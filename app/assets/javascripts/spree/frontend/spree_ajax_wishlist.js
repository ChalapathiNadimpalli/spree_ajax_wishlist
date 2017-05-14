// Placeholder manifest file.
// the installer will append this file to the app vendored assets here: vendor/assets/javascripts/spree/frontend/all.js'

function set_wishlist_icon(product_id, active) {
    if (active) {
        $(".wishlist-icon.product-id-" + product_id).addClass('active');
        $(".wishlist-active.product-id" + product_id).val('false');
    }
    else {
        $(".wishlist-icon.product-id-" + product_id).removeClass('active');
        $(".wishlist-active.product-id" + product_id).val('true');
    }
}
