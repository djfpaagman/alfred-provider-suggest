require 'rbconfig'
# ruby 1.8.7 doesn't define RUBY_ENGINE
ruby_engine = defined?(RUBY_ENGINE) ? RUBY_ENGINE : 'ruby'
ruby_version = RbConfig::CONFIG["ruby_version"]
path = File.expand_path('..', __FILE__)
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/gems/mini_portile-0.6.2/lib")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/gems/nokogiri-1.6.6.2/Users/Dennis/Dropbox/Alfred.alfredpreferences/workflows/user.workflow.A203831F-4005-49BB-AD0B-BEBE22260066/vendor/bundle/ruby/2.0.0/extensions/x86_64-darwin-14/2.0.0-static/nokogiri-1.6.6.2")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/gems/nokogiri-1.6.6.2/lib")
$:.unshift File.expand_path("#{path}/../#{ruby_engine}/#{ruby_version}/gems/alfredo-0.1.2/lib")
