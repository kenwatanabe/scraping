json.extract! amazon_api_datum, :id, :id_type, :item_id, :main_image_url, :created_at, :updated_at
json.url amazon_api_datum_url(amazon_api_datum, format: :json)
