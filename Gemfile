source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.5'
gem 'sqlite3'
gem 'puma', '~> 3.7'
gem 'bcrypt', '~> 3.1', '>= 3.1.11'
gem 'jwt', '~> 2.1'
gem 'active_model_serializers', '~> 0.10.7'
gem 'will_paginate', '~> 3.1', '>= 3.1.6'
gem 'graphql', '~> 1.7', '>= 1.7.14'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.7', '>= 3.7.2'
  gem 'faker', '~> 1.8', '>= 1.8.7'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'graphiql-rails', '1.4.4'
end

group :test do
  gem 'factory_bot_rails', '~> 4.8', '>= 4.8.2'
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.2'
  gem 'database_cleaner', '~> 1.6', '>= 1.6.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
