class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.integer :profile_id
      t.references :listing_id, foreign_key: true
      t.references :user_id, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :avatar

      t.timestamps
    end
  end
end
