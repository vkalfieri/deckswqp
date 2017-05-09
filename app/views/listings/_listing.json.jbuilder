json.extract! listing, :id, :listing_id, :description, :condition_id_id, :card_number, :card_name, :card_set, :category_id_id, :subcategory_id_id, :delivery_id_id, :price, :trade_id_id, :seller_id_id, :user_id_id, :stripe_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
