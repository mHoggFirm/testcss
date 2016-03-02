require('sinatra')
require('sinatra/contrib/all')
require('json')
require_relative('./models/wordform')

get '/address'  do
  content_type(:json)
  result = {address: '3 Argyle House',
            building: 'CODEBASE',
            postcode: 'e13 zqf',
            phone: '0131558030'
          }

  words = Wordformatter.new(result[:postcode])
  @words = words.upcase
  return @words.to_json
  end

get '/camel/:word' do
  words = Wordformatter.new(params[:word])
  @words  = words.camel
  erb(:outcome)
end
