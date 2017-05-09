class CreateDeliveries < ActiveRecord::Migration[5.0]
  def change
    create_table :deliveries do |t|
      t.integer :delivery_id
      t.integer :delivery_type
      t.references :user_id, foreign_key: true
      t.references :listing_id, foreign_key: true

      t.timestamps
    end
  end
end
