class AddFullnameToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :fullname, :string
  end

  def self.down
    remove_column :people, :fullname
  end
end
