module Faucet
  class EmailsController < ApplicationController
    def index
      @emails = Email.all
    end
    
    def send_email
      Email.all.each do |email|
        puts "Running: #{email.description}."
        puts eval("::" + email.function)
      end
    end
  
  end
end
