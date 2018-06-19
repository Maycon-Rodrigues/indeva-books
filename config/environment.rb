# Load the Rails application.
require_relative 'application'

config.i18n.available_locales = ['pt-BR']

# Set default locale to something other than :en
I18n.default_locale = 'pt-BR'

# Initialize the Rails application.
Rails.application.initialize!
