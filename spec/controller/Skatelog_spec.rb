# require_relative '../spec_helper'


# describe "Skatelog" do
#   describe "inheritance" do
#     it "inherits from ActiveRecord::Base" do
#       expect(Skatelog < ActiveRecord::Base).to be true
#     end
#   end

#   describe "associations" do

#     before(:all) do
#       Skatelog.delete_all
#       Skatelog.create(title: "Berkeley Skate Park", seshtime: "1 hour", tricks: "none", description: "Skating and hanging with patches")


#       berk = Skatelog.find_by(title: "Berkeley Skate Park")

#       Skatelog.delete_all
#       Skatelog.create( {
#                     :title        => "Berkeley Skate Park",
#                     :seshtime     => "1 hour",
#                     :tricks       => "none",
#                     :description  => "Skating and hanging with patches",
#                     :user_id      => user.id } )
#     end



#     describe "belongs to user" do
#       describe "#user" do
#         it "returns the user's skatelog" do
#           skatelog = Skatelog.first
#           expected_user = User.find(skatelog.user_id)

#           expect(skatelog.user).to eq expected_user
#         end

#         it "returns a User object" do
#           skatelog = Skatelog.first
#           expect(skatelog.user).to be_instance_of User
#         end
#       end

#       describe "#user=" do
#         it "sets user_id" do
#           skatelog = Skatelog.new
#           new_user = User.first

#           expect{ skatelog.user = new_user }.to change{ skatelog.user_id }.from(nil).to(new_user.id)
#         end
#       end
#     end
#   end
# end