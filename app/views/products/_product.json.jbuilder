json.extract! product, :id, :title, :artist, :release_date, :created_at, :updated_at
json.url product_url(product, format: :json)
