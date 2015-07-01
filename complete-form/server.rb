require 'bundler/setup'
require 'sinatra'
require 'pry'
require 'iaa'

post '/form' do
  form = IAA::Form7600A.new
  params.each_pair do |key, value|
    form.send("#{key}=", value)
  end
  filename = form.save("forms")
  send_file(filename)
end

