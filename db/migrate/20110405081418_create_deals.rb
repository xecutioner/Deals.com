class CreateDeals < ActiveRecord::Migration
  def self.up
    create_table :deals do |t|
      t.string :title
      t.text :description
      t.integer :unit
      t.datetime :expiry_date
      t.integer :discounted_price
      t.integer :actual_price
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :deals
  end
end
