Rails.application.routes.draw do

  get "simulate/schedule"

  mount Faucet::Engine => "/faucet", :as => "faucet_engine"
end
