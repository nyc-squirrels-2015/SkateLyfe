get '/login' do
	erb :login
end

post '/login' do
	@user = User.find( username: params[:user][:username] )
end