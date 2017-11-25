class Product < ActiveRecord::Base
    has_many :genres, through: :genre_products
    has_many :genre_products
end
