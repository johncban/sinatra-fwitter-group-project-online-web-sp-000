ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
require 'require_relative'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(ENV['SINATRA_ENV'].to_sym)

require_all 'app'
