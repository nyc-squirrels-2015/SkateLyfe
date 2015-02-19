require_relative '../spec_helper'
require 'json'

class SkatelogSpec
	describe "skatelog_controller" do 

		let (:user) {User.create(name: 'test', username:'test', boardtype: "indo", password:'123')}
		let (:skatelog) {Skatelog.create(title:'test', seshtime:'test', tricks:'test', description:'test', user_id: user.id)}
		let (:session) {{id: user.id}}
		let (:current_user) {user}

		before do
			user
			skatelog
			session
		end

		it'should respond to /skatelogs' do
			get '/skatelogs'
			expect(last_response).to be_ok
		end

		it 'should respond to /skatelogs/new' do
			post '/skatelogs', params= {skatelog: {title: "newtest", seshtime:'newtest', tricks: "newindo", description:'newtest', user_id: user.id}}
			expect(last_response).to be_redirect

			follow_redirect!
			expect(last_response).to be_redirect
			follow_redirect!
			expect(last_response.body).to include 'newtest'
		end
	end
end