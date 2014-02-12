source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.13'

gem 'jquery-rails'
gem 'devise', '3.0.3'
gem 'omniauth-github', :git => 'git://github.com/intridea/omniauth-github.git'
gem 'mail'
gem 'github_api'
gem 'foreman'
gem 'keen'
gem "em-http-request", "~> 1.0"
gem 'newrelic_rpm'
gem 'rake', '10.1.1'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
	gem 'rspec-rails'
	gem 'pry-rails'
	gem 'sqlite3'
	gem 'annotate'
	gem 'debugger'
	gem 'rails-erd'
	gem 'better_errors'
end

group :production do
	gem 'pg'
end
