class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.integer :listing_id
      t.text :description
      t.references :condition_id, foreign_key: true
      t.integer :card_number
      t.string :card_name
      t.text :card_set
      t.references :category_id, foreign_key: true
      t.references :subcategory_id, foreign_key: true
      t.references :delivery_id, foreign_key: true
      t.decimal :price
      t.references :trade_id, foreign_key: true
      t.references :seller_id, foreign_key: true
      t.references :user_id, foreign_key: true
      t.integer :stripe_id

      t.timestamps
    end
  end
end
