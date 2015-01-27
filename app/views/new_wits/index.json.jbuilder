json.array!(@new_wits) do |new_wit|
  json.extract! new_wit, :id, :message
  json.url new_wit_url(new_wit, format: :json)
end
