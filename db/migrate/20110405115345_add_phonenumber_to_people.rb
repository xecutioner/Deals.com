class AddPhonenumberToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :phonenumber, :string
  end

  def self.down
    remove_column :people, :phonenumber
  end
end
