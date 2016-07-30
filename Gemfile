source 'https://rubygems.org'

gem 'rails', '~> 5.0.0'
# Use PostgreSQL as the database for Active Record
gem 'pg', '~> 0.18.4'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
# Use serializers for serving the JSON to the frontend
gem 'active_model_serializers', '~> 0.8.3'
# Use for fun seed data
gem 'faker', '~> 1.6.6'

gem 'devise', '~> 4.2.0'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'annotate'
end

group :development do
  # use 'console' keyword anywhere to halt and jump in rails console in browser
  gem 'web-console', '~> 3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
