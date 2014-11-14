json.array!(@talks) do |talk|
  json.extract! talk, :id, :speaker, :title
  json.url talk_url(talk, format: :json)
end
