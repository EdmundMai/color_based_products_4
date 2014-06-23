class Collection < ActiveRecord::Base
  has_many :collections_products
  has_many :products, -> { order 'products.name' }, through: :collections_products
end
