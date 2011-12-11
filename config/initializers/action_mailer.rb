ActionMailer::Base.smtp_settings = {

      :address => ENV['ACTIONMAILER_ADDRESS'],
      :port => (ENV['ACTIONMAILER_PORT'] || '25').to_i,
      :user_name => ENV['ACTIONMAILER_USER'],
      :password => ENV['ACTIONMAILER_PASS'],
      :authentication => :login,
      :enable_starttls_auto => true
}

ActionMailer::Base.logger = Rails.logger

