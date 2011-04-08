class Transaction < ActiveRecord::Base

  belongs_to :person
  belongs_to :deal
  validates :unit,:presence =>true
  validates :card_number,:presence =>true
    validates :payment,:presence =>true
  validates_numericality_of :card_number
  validates :card_number, :length => {:minimum => 13, :maximum => 16}
  validates_numericality_of :unit


end

