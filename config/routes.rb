Faucet::Engine.routes.draw do
  match 'send' => "emails#send_email"
  root :to => "emails#index"
end
