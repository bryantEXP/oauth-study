source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# <---- LESSON ---->
# Install these before doing anything else!
gem 'devise' # The main gym you need to use devise
gem 'ruby_parser' # Optional.  If you run into any issues come back and install
gem 'nokogiri' # Optional.  If you run into any issues come back and install

# <---- LESSON ---->
# Step One:
# Install these gems.  If you are only using one, then only install one.
gem 'omniauth-facebook'
gem 'omniauth-github'
gem 'omniauth-google-oauth2'

# Step Two:
# Optional. If you run into any errors involving omniauth, install this gem.
gem 'omniauth'

# Step Three:
# helps with storing session from the Oauth so the session persists.
gem 'activerecord-session_store'

# Step Four:
# Run `bundle install`

# Step Five:
# Putting this step here because you won't find it if I put it in the
# credentials file.
# run 'EDITOR="atom –wait" rails credentials:edit' in your command line.
# This will open your rails credentials file.
# Insert this code into that file, replace "YOUR_ID" with your id for each
# proivder and replace "YOUR_SECRET" with your secret.

# facebook:
#   facebook_client_id: YOUR_ID
#   facebook_client_secret: YOUR_SECRET
#
# github:
#   github_client_id: YOUR_ID
#   github_client_secret: YOUR_SECRET
#
# google:
#   google_client_id: YOUR_ID
#   google_client_secret: YOUR_SECRET

# Step Six:
# SAVE AND THEN CLOSE THE FILE!  This file will not persist if you do not close it!

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
