class Product < ApplicationRecord

  validates :name, length: {in: 1..100}, uniqueness: true
  validates :price, numericality: {greater_than: 0}
  validates :description, length: {in: 10..500}
  validates :image_url, presence: true
  validates :in_stock, presence: true

  # association method
  belongs_to :supplier
  # def supplier
  #  Supplier.find_by(id: supplier_id)
  # end

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
