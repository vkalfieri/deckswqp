json.extract! profile, :id, :profile_id, :listing_id_id, :user_id_id, :first_name, :last_name, :avatar, :created_at, :updated_at
json.url profile_url(profile, format: :json)
