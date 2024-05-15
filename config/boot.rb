require "bundler/setup"

ENV["APP_ENV"] ||= "development"

Bundler.require(:default, ENV.fetch("APP_ENV"))

loader = Zeitwerk::Loader.new
loader.push_dir("lib")
loader.setup
