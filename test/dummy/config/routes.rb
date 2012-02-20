Rails.application.routes.draw do

  get "simulate/schedule"
  get "simulate/drip"
  mount Faucet::Engine => "/faucet", :as => "faucet_engine"
end
