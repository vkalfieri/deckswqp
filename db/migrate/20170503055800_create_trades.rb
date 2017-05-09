class CreateTrades < ActiveRecord::Migration[5.0]
  def change
    create_table :trades do |t|
      t.integer :trade_type
      t.integer :trade_id
      t.integer :buyer_id

      t.timestamps
    end
  end
end
