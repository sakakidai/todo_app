source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 5.2.4'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'puma', '~> 4.3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false

# template language
gem "slim-rails"

# form helper
gem "simple_form"

# Design
gem 'materialize-sass', '~> 1.0.0'
gem 'material_icons'

# breadcrumbs
gem 'gretel'

# authorization library
gem 'banken'

# User Authentication
gem 'devise'
gem 'omniauth-twitter'

# paging
gem 'will_paginate'
gem 'will_paginate-materialize', git: 'https://github.com/mldoscar/will_paginate-materialize', branch:'master'

# for enviroment var setting
gem 'dotenv-rails'

# session store backed by an Active Record class
gem 'activerecord-session_store'

# Help ActiveRecord::Enum feature to work fine with I18n and simple_form.
gem 'enum_help'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # rspec
  gem 'rspec-rails'

  # Pry for debug
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'

  # Code static code analyzer
  gem 'rubocop'
  gem 'rails_best_practices'
  gem 'bullet'
  gem 'solargraph'

  # useful error view
  gem "better_errors"
  gem 'binding_of_caller'

  # for model column name comment etc
  gem 'annotate'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'letter_opener'
  gem 'letter_opener_web'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]