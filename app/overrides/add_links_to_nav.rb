Deface::Override.new(:virtual_path => 'spree/shared/_store_menu',
                     :name => 'add_links_to_nav',
                     :insert_after => '#home-link[data-hook]',
                     :text => %q{<li id="products-link" data-hook=""><%= link_to t(:products),products_path %></li>})

Deface::Override.new(:virtual_path => 'spree/shared/_store_menu',
                     :name => 'remove_link_from_nav',
                     :remove => '#link-to-cart[data-hook]')
