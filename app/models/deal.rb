class Deal < ActiveRecord::Base
  belongs_to :person
  validates :title, :presence =>true
  validates :description,:presence =>true
  validates :unit,:presence =>true
  validates :expiry_date,:presence =>true
  validates :discounted_price,:presence =>true
  validates :actual_price,:presence =>true
  validates :image_url,:presence =>true
  validates_numericality_of :unit
  validates_numericality_of :expiry_date
  validates_numericality_of :discounted_price
end

