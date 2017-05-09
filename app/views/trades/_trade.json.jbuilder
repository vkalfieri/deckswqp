json.extract! trade, :id, :trade_type, :trade_id, :buyer_id, :created_at, :updated_at
json.url trade_url(trade, format: :json)
