require 'bundler/setup'
require 'iaa'

run Rack::URLMap.new(
  '/' => IAA::Server
)
