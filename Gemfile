source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails', '3.2.8'
gem 'bundler', '1.2'

gem 'mysql2'
gem 'haml-rails'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'compass'
  gem 'bootstrap-sass'

  gem 'uglifier', '>= 1.0.3'
  gem 'font-awesome-sass-rails'
end

gem 'jquery-rails'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-twitter'

group :test do
  gem 'database_cleaner'
  gem "shoulda-matchers"
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'cucumber-rails', require: false
end

group :development do
  gem 'heroku'
end

group :production do
  gem 'thin'
end
