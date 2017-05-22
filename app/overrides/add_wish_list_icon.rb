Deface::Override.new(
  virtual_path: "spree/shared/_products",
  name: "add wishlist_icon_to_product_tile",
  insert_top: ".panel.panel-default",
  partial: "spree/ajax_wishlists/wishlist_icon",
)

Deface::Override.new(
  virtual_path: "spree/products/show",
  name: "add wishlist_icon_to_product_show",
  insert_before: "#product-images .panel-body",
  partial: "spree/ajax_wishlists/wishlist_icon",
)

Deface::Override.new(
  virtual_path: "spree/taxons/show",
  name: "add quick_response_js",
  insert_after: "[data-hook='taxon_products']",
  partial: "spree/ajax_wishlists/quick_response",
)

Deface::Override.new(
  virtual_path: "spree/products/index",
  name: "add quick_response_js_search_results",
  insert_after: "[data-hook='search_results']",
  partial: "spree/ajax_wishlists/quick_response",
)

Deface::Override.new(
  virtual_path: "spree/products/index",
  name: "add wishlist for product homepage products",
  insert_after: "[data-hook='homepage_products']",
  partial: "spree/ajax_wishlists/product_index",
)

Deface::Override.new(
  virtual_path: "spree/products/show",
  name: "add wishlist for product show",
  insert_after: "[data-hook='product_show']",
  partial: "spree/ajax_wishlists/product_show",
)