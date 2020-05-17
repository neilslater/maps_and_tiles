# frozen_string_literal: true

require 'bundler/audit/task'
require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'yard'

desc 'Run specs'
RSpec::Core::RakeTask.new(:spec)

desc 'Run Rubocop'
RuboCop::RakeTask.new

desc 'Generate docs (YARD)'
YARD::Rake::YardocTask.new

desc 'Update and run bundle audit'
Bundler::Audit::Task.new

desc 'Run full set of QC tools'
task qc: %i[bundle:audit rubocop spec]

task default: :qc
