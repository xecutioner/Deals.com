class AddPersonIdToDeals < ActiveRecord::Migration
  def self.up
    add_column :deals, :person_id, :integer
  end

  def self.down
    remove_column :deals, :person_id
  end
end
