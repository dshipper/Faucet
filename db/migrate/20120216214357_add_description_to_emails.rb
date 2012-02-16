class AddDescriptionToEmails < ActiveRecord::Migration
  def change
    add_column :faucet_emails, :description, :string
  end
end
