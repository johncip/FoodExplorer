source 'https://rubygems.org'
ruby '2.6.3'

gem 'rails', '4.2.11.3'
gem 'backbone-on-rails'
gem 'pg'
gem 'sass-rails', '~> 5.0'
# gem 'rack-zippy'

# Deployment
gem 'figaro'
group :production do
  gem 'rails_12factor'
  gem 'puma'
end

# Gimme gimme data
gem 'yelp'

# UI
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails', '~> 4.0'
gem 'jbuilder', '~> 2.0'
gem 'jquery-ui-rails', '~> 5.0'
gem 'font-awesome-rails', '~> 4.4.0.0'

gem 'json', '>= 1.8'
gem 'bigdecimal', '1.3.5'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
gem 'serialize_json-rails'

group :development, :test do
  gem 'byebug'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'faker'
  gem 'pry-rails'
  gem 'seed_dump'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
