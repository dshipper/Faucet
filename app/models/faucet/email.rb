module Faucet
  class Email < ActiveRecord::Base
    validates_presence_of :email, :function, :time, :description
  end
end
