source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.6', '>= 3.6.1'
  gem 'capybara', '~> 2.13'
  gem 'database_cleaner', '~> 1.6', '>= 1.6.1'
  gem 'selenium-webdriver'
  gem 'factory_girl_rails', '~> 4.8'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'devise', '~> 4.3'
gem 'administrate', '~> 0.8.1'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'gritter', '~> 1.2'
gem 'bourbon'
gem 'pundit', '~> 1.1'
gem 'twilio-ruby', '~> 5.2', '>= 5.2.3'
gem 'dotenv-rails' , :groups => [:development, :test]
gem 'kaminari', :git => 'https://github.com/kaminari/kaminari.git'
ruby '2.4.2'

