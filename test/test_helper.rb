ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
 require "minitest/reporters"
 Minitest::Reporters.use!
 class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)
  # Set up all fixtures in test/fixtures/*.yml.
  fixtures :all
  include ApplicationHelper
 end