require 'spec_helper'

describe Transaction do
  it {should belong_to :person}
  it {should  belong_to :deal}
  it {should validate_presence_of :unit}
  it {should validate_numericality_of :unit}
  it {should validate_presence_of :payment}
 # it {should validate_allow_maximum_value}
end
