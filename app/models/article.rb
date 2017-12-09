class Article < ActiveRecord::Base
  has_many :article_products
  has_many :products, through: :article_products
end
