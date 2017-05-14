Deface::Override.new(
    virtual_path: "spree/shared/_products",
    name: "add wishlist_icon_to_product_tile",
    insert_before: ".panel .panel-body",
    partial: "spree/ajax_wishlist/wishlist_icon",
)

Deface::Override.new(
    virtual_path: "spree/shared/_products",
    name: "add quick_response_js",
    insert_after: "[data-hook='products_search_results_heading']",
    partial: "spree/ajax_wishlist/quick_response",
)
