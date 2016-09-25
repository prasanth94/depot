require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Depot
  class Application < Rails::Application

    ActionMailer::Base.smtp_settings = {
        :address => 'smtp.gmail.com',
        :domain => 'mail.google.com',
        :port => 587,
        :user_name => 'mprasanthk27@gmail.com',
        :password => '9846385147',
        :authentication => 'login',
        :enable_starttls_auto => true
    }
    
    config.active_record.raise_in_transactional_callbacks = true
  end
end
