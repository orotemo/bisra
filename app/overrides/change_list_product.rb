Deface::Override.new(:virtual_path => 'spree/shared/_products',
                     :name => 'change_list_product',
                     :replace => '[data-hook="products_list_item"]',
                     :text => %q{<li id="product_<%= product.id %>" class="columns three" data-hook="products_list_item" itemscope itemtype="http://schema.org/Product">
        <%= link_to small_image(product, :itemprop => "name"), product %>
        <span class="name"><%= link_to product.name, product, :class => 'info', :itemprop => "name" %></span
        <span class="price selling" itemprop="price"><%= number_to_currency product.price %></span>
        <span class="buy"> <a class="plus" href="#">+</a><a class="minus" href="#">-</a></span>
      </li>
})
