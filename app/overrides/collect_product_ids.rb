Deface::Override.new(
    virtual_path: "spree/shared/_products",
    name: "collect_product_ids",
    insert_after: "[data-hook='products_search_results_heading']",
    partial: "spree/ajax_wishlists/product_ids",
)

Deface::Override.new(
    virtual_path: "spree/products/show",
    name: "collect_product_id_for_show",
    insert_before: "[data-hook='product_images']",
    partial: "spree/ajax_wishlists/product_ids",
)
