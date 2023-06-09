git_source(:github) { |repo| "https://github.com/#{repo}.git" }
source 'https://rubygems.org'

# Core Stuff
gem 'puma'
gem 'rails', '5.1.7'

# Database Stuff
gem 'activerecord-import' # Run bulk imports quicker
gem 'algoliasearch-rails' # Future Search
gem 'attr_encrypted', '~>3.1.0' # encrypt linked_profile tokens
gem 'chewy' # ElasticSearch (TODO: remove this once we switch to Algolia)
gem 'connection_pool' # Pool our Redises
gem 'hiredis' # Faster redis
gem 'mongo' # MongoDB for Aozora
gem 'pg' # Postgres
gem 'redis', '> 3.3.0', require: ['redis', 'redis/connection/hiredis'] # Redis
gem 'redis-rails' # Redis on Rails

# Auth{entication,orization}
gem 'bcrypt'
gem 'doorkeeper'
gem 'doorkeeper-grants_assertion', git: 'https://github.com/doorkeeper-gem/doorkeeper-grants_assertion'
gem 'pundit'
gem 'pundit-resources', github: 'hummingbird-me/pundit-resources'
gem 'rolify'
gem 'twitter'

# Attachments
gem 'aws-sdk', '< 3.0'
gem 'delayed_paperclip'
gem 'image_optim', require: false
gem 'image_optim_pack', require: false
gem 'paperclip', '~> 5.0'
gem 'paperclip-meta'
gem 'paperclip-optimizer'

# Background tasks
gem 'sidekiq', '~> 5'
gem 'sidekiq-debounce'
gem 'sidekiq-scheduler'

# Text pipeline
gem 'html-pipeline'
gem 'kramdown'
gem 'rinku'
gem 'sanitize'

# Feature Flagging
gem 'flipper'
gem 'flipper-redis'
gem 'flipper-ui'

# API Frameworks
gem 'graphql'
gem 'graphql-batch'
gem 'jsonapi-resources', '0.9.0'

# Miscellaneous Utilities
gem 'addressable' # Fancy address logic
gem 'counter_culture' # Fancier counter caches
gem 'faraday'
gem 'faraday_middleware'
gem 'fastimage' # Quickly get image sizes
gem 'friendly_id' # slug-urls-are-cool
gem 'google-api-client' # Google APIs
gem 'ice_cube' # Episode release schedules
gem 'lograge' # Non-shitty logging
gem 'mechanize' # Automating interaction with websites
gem 'nokogiri', '~> 1.8.4' # Parse MAL XML shit
gem 'one_signal' # Send push notifications
gem 'paranoia', '~> 2.4' # Faux deletion
gem 'ranked-model' # Sortables!
gem 'rbtrace' # Attach to running ruby processes
gem 'retriable' # Retry when errors happen
gem 'roadie-rails' # Inline CSS for emails
gem 'ruby-progressbar' # Fancy progress bars for Rake tasks
gem 'sass-rails' # Process SCSS for emails
gem 'sitemap_generator' # Generate Sitemaps
gem 'stoplight' # Disable features if they break a bunch
gem 'strait', github: 'hummingbird-me/strait',
              branch: 'master'
gem 'stream-ruby', '~> 2.10.0' # Feeds
gem 'stream_rails', github: 'GetStream/stream-rails',
                    branch: 'feature/subreference-enrichment' # Feed Enrichment
gem 'typhoeus' # Parallelize scraping tasks

# Cash Money
gem 'stripe'

# Rack Middleware
gem 'rack-attack'
gem 'rack-cors'

# Optimizations
gem 'fast_blank' # Faster String#blank?
gem 'oj' # Blazing-fast JSON parsing
gem 'oj_mimic_json' # Hook it in place of JSON gem
gem 'parallel' # Process shit in parallel
gem 'tunemygc' # Tune Garbage Collector

gem 'sentry-raven' # Send error data to Sentry

# Admin Panel
gem 'forest_liana' # Forest Admin
gem 'pg_query' # pghero indexes
gem 'pghero'
gem 'rails_admin'
gem 'sinatra' # used by sidekiq/web

group :development, :test do
  gem 'annotate' # Schema annotations inside model-related files
  gem 'dotenv-rails' # Load default ENV
  gem 'pry-rails' # Better Console
  gem 'spring' # Faster CLI

  # Development+Testing
  gem 'database_cleaner' # Clean the database fully before doing anything
  gem 'factory_bot_rails' # Factories > Fixtures
  gem 'rspec-rails' # Specs > Tests

  # Guard notices filesystem changes and *does things*
  gem 'guard'
  gem 'guard-rspec', require: false # Running specs

  # Useful for benchmarking!
  gem 'benchmark-ips'
  gem 'derailed_benchmarks'

  # Debugging tests and scripts
  gem 'pry-byebug'
end

group :test do
  gem 'faker' # Fake data
  gem 'json_expressions' # Test outputted JSON
  gem 'rspec-sidekiq' # Test Sidekiq jobs
  gem 'shoulda-matchers' # it { should(:have_shoulda) }
  gem 'stripe-ruby-mock', require: 'stripe_mock' # Mock Stripe API
  gem 'timecop' # stop [hammer-]time
  gem 'webmock' # Web faking

  # Coverage
  gem 'simplecov' # Local coverage

  # Libraries used to test our API itself
  gem 'oauth2', github: 'oauth-xx/oauth2', branch: 'master'
end

group :production, :staging do
  gem 'librato-rails' # Metrics
  gem 'puma_worker_killer'
  gem 'rails_12factor' # Log to stdout, serve assets
end
