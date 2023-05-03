env :PATH, ENV['PATH']
set :environment, "development"
set :output, "log/cron.log" 

every 1.day, at: '6:00 am' do
    runner "Bill.new.run_scheduled_payments"
end