json.array!(@users) do |user|
  json.extract! user, :id, :email, :username, :password, :languages, :rating, :photo
  json.url user_url(user, format: :json)
end
