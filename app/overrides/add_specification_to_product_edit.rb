Deface::Override.new(virtual_path: 'spree/admin/products/_form',
  name: 'add_specification_to_product_edit',
  insert_after: "erb[loud]:contains('text_area :description')",
  text: %q(
    <div data-hook="admin_product_form_specification">
      <%= f.field_container :specification, class: ['form-group'] do %>
        <%= f.label :specification, Spree.t(:specification) %>
        <%= f.text_area :specification, { rows: "#{unless @product.has_variants? then '20' else '13' end}", class: 'form-control' } %>
        <%= f.error_message_on :specification %>
      <% end %>
    </div>
  )
)