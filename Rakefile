#!/usr/bin/env ruby

$: << File.expand_path(File.dirname(__FILE__) + "/../lib")

# Gems
require "rubygems"
require "rake"

# Helpers
def test(file)
	puts `ruby -I . test/test_#{file}.rb`
end

# Tasks
desc "Run tests." 
task :default do
	puts "Testing shorten...".yellow
	test("shorten")
	puts "Testing expand...".yellow
	test("expand")
	puts "Testing status...".yellow
	test("status")
end

task :shorten do
	test("shorten")
end

task :expand do
	test("expand")
end

task :status do
	test("status")
end
