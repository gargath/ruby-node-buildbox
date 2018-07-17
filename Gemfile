# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.5.1'

gem 'active_model_serializers', '~> 0.10.0'
gem 'activerecord', '< 5.0'
gem 'activesupport'
gem 'bcrypt'
gem 'bundler'
gem 'concurrent-ruby', require: 'concurrent'
gem 'foreman'
gem 'grape', '>=0.19.2'
gem 'hashie-forbidden_attributes', '~> 0.1'
gem 'jsonapi-renderer'
gem 'jwt'
gem 'lru_redux'
gem 'otr-activerecord'
gem 'pg', groups: %i[development production]
gem 'puma'
gem 'rack'
gem 'rack-cors'
gem 'rack-rewrite'
gem 'sqlite3'

group :test, :development do
  gem 'rack-test'
  gem 'rake'
  gem 'require_all'
  gem 'rspec'
  gem 'simplecov'
end

group :test do
  gem 'rubocop'
end
