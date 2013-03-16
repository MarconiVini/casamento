class AddConfirmDepositToFee < ActiveRecord::Migration
  def change
    add_column :fees, :confirm_deposit, :boolean, default: false
  end
end
