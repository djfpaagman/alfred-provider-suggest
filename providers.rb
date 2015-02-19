require_relative 'vendor/bundle/bundler/setup'

require 'alfredo'
require 'json'
require 'net/http'
require 'uri'

require_relative 'springest_auto_completer'

completer = SpringestAutoCompleter.new(ARGV[0])
workflow = Alfredo::Workflow.new

completer.providers.each do |provider|
  workflow << Alfredo::Item.new(
    uid: provider['id'],
    title: provider['name'],
    subtitle: "https://www.springest.nl#{provider['url']}",
    arg: provider['url'][1..-1], # Strip the first slash for Alfred to work correctly
    icon_path: 'assets/springest-logo-arrow-blue.png'
  )
end

workflow.output!
