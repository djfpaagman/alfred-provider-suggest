require_relative 'vendor/bundle/bundler/setup'

require 'alfredo'
require 'json'
require 'net/http'
require 'uri'

require_relative 'springest_auto_completer'

completer = SpringestAutoCompleter.new(ARGV[0])
workflow = Alfredo::Workflow.new

completer.subjects.each do |subject|
  workflow << Alfredo::Item.new(
    uid: subject['id'],
    title: subject['name'],
    subtitle: "https://www.springest.nl#{subject['url']}",
    arg: subject['url'][1..-1], # Strip the first slash for Alfred to work correctly
    icon_path: 'assets/springest-logo-arrow-blue.png'
  )
end

workflow.output!
