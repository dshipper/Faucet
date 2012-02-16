module Faucet
  class EmailsController < ApplicationController
    def index
      @emails = Email.all
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
