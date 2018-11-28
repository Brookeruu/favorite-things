require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/favorites')

get('/') do
  @list = Item.all()
  erb(:list)
end

post('/') do
  name = params["name"]
  rank = params["rank"]
  item = Item.new(name, rank)
  item.save()
  @list = Item.all()
  erb(:list)
end

get('/items/:id') do
  @item = Item.find(params[:id])
  erb(:items)
end
