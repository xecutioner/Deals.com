class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
      t.integer :person_id
      t.integer :deal_id
      t.integer :unit
      t.integer :payment_id

      t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end
