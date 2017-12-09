class GenreProduct < ActiveRecord::Base
    belongs_to :product
    belongs_to :genre
end
