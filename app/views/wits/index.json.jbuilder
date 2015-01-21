json.array!(@wits) do |wit|
  json.extract! wit, :id
  json.url wit_url(wit, format: :json)
end
