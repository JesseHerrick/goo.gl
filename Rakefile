#!/usr/bin/env ruby

$: << File.expand_path(File.dirname(__FILE__) + "/../lib")

# Lib Files
require 'jekyll-ftp/version'

# Gems
require "rubygems"
require "rake"
require "colorize"

# Tasks
desc "Run tests." 
task :default do
	
end

desc "Test shorten method"
task :shorten do
	`ruby -I . test/shorten.rb`
end

desc "Test expand command."
task :expand do
	`ruby -I . test/expand.rb`
end