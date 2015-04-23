require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinations')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:index)
end

get('/change') do
  @q_limit = params.fetch('q_limit').to_i()
  if @q_limit > 0
    @cents = params.fetch('cents').to_i().coin_combinations(@q_limit)
  else
    @cents = params.fetch('cents').to_i().coin_combinations()
  end


  erb(:change)
end
