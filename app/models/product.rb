class Product < ApplicationRecord

  validates :name, length: {in: 1..100}, uniqueness: true
  validates :price, numericality: {greater_than: 0}
  validates :description, length: {in: 10..500}
  validates :in_stock, presence: true

  belongs_to :supplier
  has_many :orders
  has_many :product_categories
  has_many :images

  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

end
