require 'minitest/spec'
require File.expand_path('../support/helpers', __FILE__)

# https://github.com/calavera/minitest-chef-handler/blob/v0.4.0/examples/spec_examples/files/default/tests/minitest/example_test.rb
describe_recipe "platform::default" do
  include Helpers

  describe "packages" do
    it "should install the necessary packages" do
      # rogervoice_packages.each do |package_name|
      #   package(package_name).must_be_installed
      # end
    end

  end

  describe "services" do
    it "should start the proper services" do
      # %w(ntp monit).each do |srv|
      #   service(srv).must_be_running
      #   service(srv).must_be_enabled
      # end
    end
  end

  describe "cron tasks" do
  end

  describe "directories" do
  end

  describe "files" do
  end

  describe "source installation" do
  end

  describe "security" do
  end
end

