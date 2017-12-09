class Benefit < ActiveRecord::Base
    has_one :product
    has_one :shop
    
    belongs_to :benefit_type
end
