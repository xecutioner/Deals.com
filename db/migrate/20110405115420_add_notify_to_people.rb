class AddNotifyToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :notify, :boolean
  end

  def self.down
    remove_column :people, :notify
  end
end
