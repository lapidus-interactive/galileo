# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
:address => ENV["SMTP_SERVER"],
:port => ENV["SMTP_PORT"],
:user_name => ENV["SMTP_USER"],
:password => ENV["SMTP_PASSWORD"],
:authentication => :login,
:enable_starttls_auto => true,
:openssl_verify_mode => 'none'
}
