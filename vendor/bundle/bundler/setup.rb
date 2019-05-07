require 'rbconfig'
# ruby 1.8.7 doesn't define RUBY_ENGINE
ruby_engine = defined?(RUBY_ENGINE) ? RUBY_ENGINE : 'ruby'
ruby_version = RbConfig::CONFIG["ruby_version"]
path = File.expand_path('..', __FILE__)
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/mini_portile2-2.4.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/extensions/x86_64-darwin-18/2.4.0-static/nokogiri-1.10.3"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/nokogiri-1.10.3/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/alfredo-0.1.3/lib"
$:.unshift "#{path}/"
