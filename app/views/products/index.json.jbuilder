json.array!(@products) do |product|
  json.extract! product, :id, :item_number, :name, :price, :show, :collection
  json.url product_url(product, format: :json)
end
