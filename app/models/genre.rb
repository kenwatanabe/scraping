class Genre < ActiveRecord::Base
    has_many :genre_products
end
