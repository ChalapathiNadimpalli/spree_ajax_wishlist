Deface::Override.new(
    virtual_path: "spree/shared/_products",
    name: "add wishlist_icon_to_product_tile",
    insert_before: ".panel .panel-body",
    partial: "spree/ajax_wishlist/wishlist_icon",
)