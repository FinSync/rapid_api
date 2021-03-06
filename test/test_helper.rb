require 'bundler/setup'
require 'byebug'
require 'rails'
require 'action_controller'
require 'action_controller/test_case'
require 'active_model_serializers'
require 'rapid_api'
require 'minitest/autorun'
require './test/support/models.rb'
Dir['./test/support/**/*.rb'].each {|f| require f}

module TestHelper
  Routes = ActionDispatch::Routing::RouteSet.new
  Routes.draw do
    # TODO: Need to deal with the deprecation of the dynamic segments
    get ':controller(/:action(/:id))'
    get ':controller(/:action)'
  end

  ActionController::Base.send :include, Routes.url_helpers
end

ActionController::TestCase.class_eval do
  def setup
    @routes = TestHelper::Routes
  end

  def teardown
  end
end
