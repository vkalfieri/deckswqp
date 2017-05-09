class Delivery < ApplicationRecord
  belongs_to :user_id
  belongs_to :listing_id
end
