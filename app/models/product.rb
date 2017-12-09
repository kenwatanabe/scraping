class Product < ActiveRecord::Base
    has_many :genres, through: :genre_products
    has_many :genre_products
    has_many :benefit
    has_one  :amazon_api_datum
end
