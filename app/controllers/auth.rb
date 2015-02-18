
################### LOGIN ##############################
# get '/login' do
# 	erb :'auth/login'
# end

post '/login' do
	@user = User.find_by( username: params[:user][:username] )
	if @user.try(:authenticate, params[:user][:password])
		session[:id] = @user.id		
		# this will be for when i create the ajax call later
		# redirect '/'
		if request.xhr?
			erb :'_partials/_auth', layout: false
		end
	else
		return 401
	end
end

################### SIGNUP ##############################
# get '/signup' do
# 	erb :'auth/signup'
# end

post '/signup' do
	@user = User.new( params[:user] )
	if @user.save
		session[:id] = user.id
		redirect '/'
	else
		return 401	
	end
end


################### LOGOUT ##############################
get '/logout' do
	session[:id] = nil
	redirect '/'
end

