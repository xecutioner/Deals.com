class Deal < ActiveRecord::Base
  belongs_to :person
  has_many :transactions
  validates :title, :presence =>true
  validates :description,:presence =>true
  validates :unit,:presence =>true
  validates_datetime :expiry_date,:between => [DateTime.now, :date_tomorrow]

  validates :discounted_price,:presence =>true
  validates :actual_price,:presence =>true
  validates :image_url,:presence =>true
  validates_numericality_of :unit
  validates_numericality_of :discounted_price
  after_initialize :date_today

  private
  def date_today
    self.expiry_date ||= DateTime.now
  end

  def date_tomorrow
  DateTime.now + 1.day
  end
end

