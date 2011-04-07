class AddCardNumberToTransactions < ActiveRecord::Migration
  def self.up
    add_column :transactions, :card_number, :integer
  end

  def self.down
    remove_column :transactions, :card_number
  end
end
