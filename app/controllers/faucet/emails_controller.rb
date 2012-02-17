module Faucet
  class EmailsController < ApplicationController
    def index
      @emails_today = Email.where(:sent => false, :time => Faucet.today)
      @emails_sent_yesterday = Email.where(:sent => true, :time => Faucet.yesterday)
      @sent_emails = Email.where(:sent => true)
      @unsent_emails = Email.where(:sent => false)
    end
    
    def drip
      @emails = Email.where(:sent => false, :time => Faucet.today)
      @sent = []
      @emails.each do |email|
        puts "Running: #{email.description}."
        puts eval("::" + email.function)
        
        @sent << email
        
        email.sent = true
        email.save
      end
    end
  end
end
