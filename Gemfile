source 'https://rubygems.org'

ruby '2.2.3'

gem 'rqrcode-with-patches', '~> 0.5.4'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-easing-rails'

# Twitter Bootstrap
gem 'bootstrap-sass', '3.2.0.0'
gem 'bootswatch-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Devise for user auth
gem 'devise'

# CanCanCan for user roles
gem 'cancancan', '~> 1.10'

# Gravatar
gem 'gravatar_image_tag'

# Font Awesome
gem 'font-awesome-sass'

# Bootstrap Select
# http://silviomoreto.github.io/bootstrap-select/
gem 'bootstrap-select-rails'

# encode QR codes
gem 'rqrcode', '~> 0.10.1'
gem 'rqrcode_png'
gem 'rqrcode-with-patches', '~> 0.5.4'

#gem 'nokogiri', '1.6.7.2'

# braintree payments
gem 'braintree', '~> 2.58'
gem 'figaro', '~> 1.1', '>= 1.1.1'

# get your Rails variables in your js
gem 'gon', '~> 6.0', '>= 6.0.1'

# use postgres for DB in dev, test, & prod
gem 'pg'

group :development, :test do
  # Use letter opener for email testing
  gem "letter_opener"
  gem 'letter_opener_web'

  gem 'pry-rails'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  gem 'rails_12factor'
end
