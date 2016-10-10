namespace :notification do
  desc "Send SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    # 1. Schedule to run at Sunday at 5pm
    # 2. Iterate over all employees
    # 3. Skip admin users
    # 4. Send a link that has instructions and a link to log time
    #User.all.each do |user|
    #  SmsTool.send_sms()
    #number: "555-555-3233"
    #number: "555553323"
    # No spaces or dashes has to be exactly 10 chars
  end
end
