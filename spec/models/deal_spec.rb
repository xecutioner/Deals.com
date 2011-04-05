require 'spec_helper'

describe Deal do
  it {should belong_to :person}
  it {should validate_presence_of :title}
  it {should validate_presence_of :description}
  it {should validate_presence_of :unit}
  it {should validate_presence_of :expiry_date}
  it {should validate_presence_of :discounted_price}
  it {should validate_presence_of :image_url}
end
