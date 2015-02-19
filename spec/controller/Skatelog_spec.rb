require_relative '../spec_helper'


let (:user) {User.create(name: 'test', username:'test', boardtype: "indo", password:'123')}
let (:session) {}  

before do
session[:id] = user.id
end

# describe 
# to test the create controller
	post '/skatelogs/new',  params= {"user" =>{"name" =>"newtest",username:'newtest', boardtype: "newindo", password:'123'}}
	expect(last_response).to be_redirect
		# bc this is a post (or if it was a put or delete too), it has to redirect

		follow_redirect
		expect(last_response.body).to include 'Post Your Skatelog'
			# the update string is the just the value of the button
		expect(last_response.body).to include 'newtest'
	end