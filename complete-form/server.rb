require 'bundler/setup'
require 'sinatra'
require 'pry'
require 'iaa'
require 'tempfile'

  
post '/form' do
  json_headers = {
    "Content-Type" => "application/json",
     "Accept" => "application/json"
   }
  uri = URI.parse('http://localhost:3000/7600a')
  http = Net::HTTP.new(uri.host, uri.port) 
  response = http.post(uri.path, params.to_json, json_headers)  
  tempfile = Tempfile.new('test.pdf')
  tempfile.write(response.body)
  send_file(tempfile)
end
  
