# Load the Rails application.
require_relative 'application'

# Load the app's custom environment variables
app_environment_variables = File.join(Rails.root, 'config', 'app_environment_variables.rb')
load(app_environment_variables) if File.exists?(app_environment_variables)

# Initialize the Rails application.
Rails.application.initialize!

# Time format
Time::DATE_FORMATS[:default] = "%d/%m/%Y %l:%M%p"
