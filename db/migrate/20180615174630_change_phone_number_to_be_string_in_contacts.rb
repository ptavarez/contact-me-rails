class ChangePhoneNumberToBeStringInContacts < ActiveRecord::Migration[5.1]
  def change
    change_column :contacts, :phone_number, :string, :limit => 15
  end
end
