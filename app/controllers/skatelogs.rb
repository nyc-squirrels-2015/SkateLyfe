get '/' do
	redirect '/skatelogs'
end

get '/skatelogs' do
	erb :index
end