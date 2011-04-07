class AddPaymentToTransactions < ActiveRecord::Migration
  def self.up
    add_column :transactions, :payment, :integer
  end

  def self.down
    remove_column :transactions, :payment
  end
end
