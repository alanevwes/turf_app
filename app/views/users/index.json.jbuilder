json.array!(@users) do |user|
  json.extract! user, :user, :email, :password, :turf, :statiegeld
  json.url user_url(user, format: :json)
end