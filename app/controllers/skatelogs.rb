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
	skatelog = Skatelog.create(params[:skatelog])
	redirect '/'
end

################ Display a specific Skatelog ################
get '/skatelogs/id' do
	@skatelog = Skatelog.find(params[:id])
	erb :'skatelogs/show_single_skatelog'
end

########### Edit a specific Skatelog ############

get '/skatelogs/:id/edit' do
	@skatelog = Skatelog.find(params[:id])
	erb :'skatelogs/edit_skatelog'
end

put '/skatelogs/:id' do
	@skatelog = Skatelog.find(params[:id])

	if session[:id] == @skatelog.user.id
		begin
			Skatelog.find(params[:id]).update_attributes(params[:skatelog])
			redirect '/'
		rescue
			404
		end
	end
end

############## Delete a Specific Skatelog ########

delete '/skatelogs/:id' do
	skatelog = Skatelog.find(params[:id])
	skatelog.destroy

	redirect '/'
end


get '/skatelogs/' do
  erb :'skatelogs/show_single_skatelog'
end


