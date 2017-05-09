class CreateSubcategories < ActiveRecord::Migration[5.0]
  def change
    create_table :subcategories do |t|
      t.integer :subcategory_id
      t.string :subcategory_name
      t.references :category_id, foreign_key: true

      t.timestamps
    end
  end
end
