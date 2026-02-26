source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.1.2"

# The modern asset pipeline
gem "propshaft"

# Use PostgreSQL as the database for Active Record
gem "pg", ">= 1.5"

# Use the Puma web server
gem "puma", ">= 5.0"

# JavaScript with import maps
gem "importmap-rails"

# Hotwire
gem "turbo-rails"
gem "stimulus-rails"

# JSON builder
gem "jbuilder"

# gem "bcrypt", "~> 3.1.7"

# Windows zoneinfo support
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Database-backed adapters
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Boot speed
gem "bootsnap", require: false

# Deployment
gem "kamal", require: false

# Puma acceleration
gem "thruster", require: false

# Active Storage variants
gem "image_processing", "~> 1.2"

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "bundler-audit", require: false
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

gem 'recaptcha', require: 'recaptcha/rails'
