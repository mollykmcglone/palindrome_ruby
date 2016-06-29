require('sinatra')
require('sinatra/reloader')
require('./lib/palindromes')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/answer') do
  @entry = params.fetch('entry')
  @feedback = params.fetch('entry').palindromes?()
  erb(:answer)
end
