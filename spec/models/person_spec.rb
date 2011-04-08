require 'spec_helper'

describe Person do
  it {should validate_presence_of :email }
  it {should validate_presence_of :password }
  it {should validate_presence_of :username }
  it {should validate_presence_of :fullname }
  it {should validate_presence_of :phonenumber }
  #it {should validate_uniqueness_of :email}
  #it {should validate_uniqueness_of :username}    #BUG :- Find a way around to fix this bug
end

