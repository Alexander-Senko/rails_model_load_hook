# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in rails_model_load_hook.gemspec.
gemspec

gem 'puma'

gem 'sqlite3'

gem 'sprockets-rails'

# Start debugger with binding.b [https://github.com/ruby/debug]
# gem "debug", ">= 1.0.0"

group :test do
	gem 'simplecov', require: false
end

group :development do
	gem 'rubocop',       require: false
	gem 'rubocop-rails', require: false
end

# CI-specific

case rails_version = ENV.fetch('RAILS_VERSION', :default)
when 'head'
	gem 'rails', github: 'rails/rails'
when /\d+(\.\d+)?/
	gem 'rails', "~> #{rails_version}.0"
end
