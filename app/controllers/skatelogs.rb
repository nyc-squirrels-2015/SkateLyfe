get '/' do
	redirect '/skatelogs'
end

get '/skatelogs' do
	@skatelogs = Skatelog.all
	erb :index
end

############## Add A NEW Skatelog #####################

get '/skatelogs/new' do
	@skatelog = Skatelog.all
	erb :'skatelogs/new_skatelog'
end

post '/skatelogs' do
	params[:skatelog][:user_id] = current_user.id
	@skatelog = Skatelog.create(params[:skatelog])
	redirect '/'
end

################ Display a specific Skatelog ################
get '/skatelogs/:id' do
	@skatelog = Skatelog.find(params[:id])
	erb :show_single_skatelog
end

########### Edit a specific Skatelog ############

get '/skatelogs/:id/edit' do
	@skatelog = Skatelog.find(params[:id])
	erb :edit_skatelog
end

put '/skatelogs/:id' do
	skatelog = Skatelog.find(params[:id])

	if session[:id] == skatelog.user.id
		begin
			Skatelog.find(params[:skatelog])
			redirect '/'
		rescue
			404
		end
	end
end
