# Settings specified here will take precedence over those in config/environment.rb

config.gem 'webrat',
  :version => '= 0.4.4'
config.gem 'cucumber',
  :version => '= 0.3.0'
config.gem 'thoughtbot-factory_girl',
  :lib     => 'factory_girl',
  :source  => "http://gems.github.com", 
  :version => '1.2.1'

config.cache_classes = true

# Log error messages when you accidentally call methods on nil.
config.whiny_nils = true

# Show full error reports and disable caching
config.action_controller.consider_all_requests_local = true
config.action_controller.perform_caching             = false
config.action_view.cache_template_loading            = true

# Disable request forgery protection in test environment
config.action_controller.allow_forgery_protection    = false

# Tell Action Mailer not to deliver emails to the real world.
# The :test delivery method accumulates sent emails in the
# ActionMailer::Base.deliveries array.
config.action_mailer.delivery_method = :test
