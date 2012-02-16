Faucet::Engine.routes.draw do
  match 'drip' => "emails#drip"
  root :to => "emails#index"
end
