desc "Send all Faucet emails that need to be sent"
task "faucet:send" do
   Email.each do |email|
     puts email.description
   end
end
