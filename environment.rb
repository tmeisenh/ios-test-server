$:.unshift File.dirname(__FILE__)
$:.unshift File.expand_path("../app", __FILE__)
env = (ENV['RACK_ENV'] || :development)

require 'rubygems'
require 'bundler'
Bundler.require :default, env.to_sym
require 'rack'
require 'logger'

logger = Logger.new($stdout)
