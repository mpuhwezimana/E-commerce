class RemoveSupplierIdFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :supplier_id, :integer
  end
end
