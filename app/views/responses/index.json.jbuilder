json.array!(@responses) do |response|
  json.extract! response, :id, :years_using_ruby, :city, :state, :stay, :thoughts
  json.url response_url(response, format: :json)
end
