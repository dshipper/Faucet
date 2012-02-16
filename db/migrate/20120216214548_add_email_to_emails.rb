class AddEmailToEmails < ActiveRecord::Migration
  def change
    add_column :faucet_emails, :email, :string
  end
end
