get '/login' do
	erb :login
end

post '/login' do
	@user = User.find_by( username: params[:user][:username] )

	if @user.try(:authenticate, params[:user][:password])
		session[:id] = @user.id
		
		# this will be for when i create the ajax call later
		if request.xhr?
			erb :'_partials/_auth', layout: false
		end
	
	else
		return 401
	end	

end