Welcome to Faucet!
===================
Brought to you by [Airtime for Email](http://www.airtimehq.com).
---------------------------------------

faucet is a Rails gem to make drip marketing easy for SaaS startups.

What's drip marketing?
----------------------
Glad you asked! Drip marketing "is a communication strategy that sends, or 'drips,' a pre-written set of messages to customers or prospects over time." ([Source](http://en.wikipedia.org/wiki/Drip_marketing))

faucet lets you quickly and easily schedule emails to be sent (and the times you'd like them to be sent) right from your Rails controller. It works by 
allowing you to pass in a mailer function, and a scheduled time that you'd like the mailer function to be called.

Can't I use delayed job for this?
---------------------------------
Sure! We don't have delayed job so we decided to build this instead.

Install
-------

	gem 'faucet #Gemfile
	
	mount Faucet::Engine => "/faucet", :as => "faucet_engine" #config/routes.rb
	
	$ rake faucet:install:migrations
	$ rake db:migrate

To schedule an email:

	Faucet::Email.create!(:time  => 2.days.from.now,  #this goes in your controller (maybe right after your user signs up)
	                      :function => "UserMailer.one_week", 
	                      :description => "One week reminder email", 
	                      :email => "dshipper@gmail.com")

Set up cron to send the emails out:

	#lib/tasks/cron.rake
	task :cron => :environment do
	  if Time.now.hour % 1 == 0 # run every hour
	    puts "Dripping mail..."
	    Faucet::EmailsController.new.drip
	    puts "Done."
	  end
	end

To see the faucet dashboard go to http://localhost:3000/faucet

Coded lovingly by [Dan Shipper](http://www.twitter.com/danshipper) and [Patrick Leahy](http://www.twitter.com/leahy16)