require 'simplecov'
require_relative 'helper'
SimpleCov.start

RSpec.configure do |f|
  f.include ReadFile
end

PROJECT_ROOT = File.expand_path("../..", __FILE__)

Dir.glob(File.join(PROJECT_ROOT, "lib", "*.rb")).each do |file|
  require file
end
