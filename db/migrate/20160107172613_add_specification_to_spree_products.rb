class AddSpecificationToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :specification, :text
  end
end
