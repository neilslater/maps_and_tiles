# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'yard'

desc 'Run specs'
RSpec::Core::RakeTask.new(:spec)

desc 'Run Rubocop'
RuboCop::RakeTask.new

task default: :spec
