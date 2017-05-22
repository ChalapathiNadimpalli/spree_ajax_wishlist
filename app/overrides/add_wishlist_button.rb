Deface::Override.new(
    virtual_path: 'spree/users/show',
    name: 'user_wishlists_button',
    insert_bottom: "h1",
    text: "<%= link_to(spree.wishlists_path, class: 'btn btn-primary pull-right') do %>
          <span class='glyphicon glyphicon-list-alt'></span>
          <%= Spree.t('wishlist.wishlist') %>
        <% end %>"
)
