class CreateAddProducts < ActiveRecord::Migration
  def change
    create_table :add_products do |t|
      t.string :name
      t.text :details
      t.float :price

      t.timestamps
    end
  end
end
