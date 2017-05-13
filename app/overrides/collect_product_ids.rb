Deface::Override.new(
    virtual_path: "spree/shared/_products",
    name: "collect_product_ids",
    insert_after: "[data-hook='products_search_results_heading']",
    partial: "spree/ajax_wishlist/product_ids",
)