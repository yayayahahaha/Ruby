class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :product_name
    	t.text :description
    	t.float(:price)
    	t.string(:url)

    	t.references :category

      t.timestamps null: false
    end
  end
end
