require('sinatra')
require('sinatra/reloader')
require('./lib/anagramer')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:index)
end

get('/anagramer') do

  @source_w = params.fetch('source_w')
  @words_compare = params.fetch('words_compare')

  @results = @source_w.anagramer(@words_compare)
  erb(:results)
end
