class RemovePaymentIdFromTransactions < ActiveRecord::Migration
  def self.up
    remove_column :transactions, :payment_id
  end

  def self.down
    add_column :transactions, :payment_id, :integer
  end
end
