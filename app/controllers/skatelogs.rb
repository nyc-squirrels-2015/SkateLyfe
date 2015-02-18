get '/' do
	redirect '/skatelogs'
end

get '/skatelogs' do
	@skatelogs = Skatelog.all
	erb :index
end