class CreateFaucetEmails < ActiveRecord::Migration
  def change
    create_table :faucet_emails do |t|
      t.datetime :time
      t.string :function

      t.timestamps
    end
  end
end
