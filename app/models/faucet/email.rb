module Faucet
  class Email < ActiveRecord::Base
    attr_accessible :email, :time, :function, :description
    validates_presence_of :email, :function, :time, :description
  end
  
  def self.today
    (Time.now.midnight)..Time.now.end_of_day
  end
  
  def self.yesterday
    (1.day.ago.midnight)..1.day.ago.end_of_day
  end
end
