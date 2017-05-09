class Profile < ApplicationRecord
  belongs_to :listing_id
  belongs_to :user_id
end
