module Faucet
  class Email < ActiveRecord::Base
    validates_presence_of :email, :function, :time, :description
  end
  
  def self.today
      (Time.now.midnight)..Time.now.end_of_day
  end
end
