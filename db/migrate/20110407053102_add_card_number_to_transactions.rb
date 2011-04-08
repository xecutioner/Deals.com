class AddCardNumberToTransactions < ActiveRecord::Migration
  def self.up
    add_column :transactions, :card_number, :string
  end

  def self.down
    remove_column :transactions, :card_number
  end
end
