class Listing < ApplicationRecord
  belongs_to :condition_id
  belongs_to :category_id
  belongs_to :subcategory_id
  belongs_to :delivery_id
  belongs_to :trade_id
  belongs_to :seller_id
  belongs_to :user_id
end
