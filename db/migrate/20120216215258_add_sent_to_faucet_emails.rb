class AddSentToFaucetEmails < ActiveRecord::Migration
  def change
    add_column :faucet_emails, :sent, :boolean, :default => false
  end
end
