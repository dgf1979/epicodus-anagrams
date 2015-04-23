require('sinatra')
require('sinatra/reloader')
require('./lib/anagramer')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:index)
end
