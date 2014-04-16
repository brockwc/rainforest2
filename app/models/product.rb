class Product < ActiveRecord::Base
  

  def formatted_price
    price_in_dollars = price_in_cents/100
    sprintf("%.2f", price_in_dollars)
  end

  has_many :reviews
  has_many :users, :through => :reviews
end
