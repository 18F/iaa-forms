require 'bundler/setup'
require 'pry'
require 'erb'
require 'json'


template = File.read('tpl.erb')
fields = JSON.parse(File.read('../../iaa/lib/mappings/7600A.json'))
rendered = ERB.new(template).result(binding)

File.open('fields.html', 'w') { |file| file.write(rendered) }
