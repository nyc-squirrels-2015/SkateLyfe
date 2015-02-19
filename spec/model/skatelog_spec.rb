require_relative '../spec_helper'


describe "Skatelog" do
  describe "inheritance" do
    it "inherits from ActiveRecord::Base" do
      expect(Skatelog < ActiveRecord::Base).to be true
    end
  end

  describe "associations" do

    before(:all) do
      Skatelog.delete_all
      Skatelog.create(title: "Berkeley Skate Park Sesh", seshtime: "1 hour", tricks: "none", description: "Skating and hanging with patches", user_id: 5)

      User.create(name:"Dramass", username:"Dramass", boardtype: "indo", password:"123", id: 5)
     

      drama = User.find_by(username: "Dramass")
     

      Skatelog.delete_all
      Skatelog.create( {:title    => "Berkeley Skate Park Sesh",
                    :seshtime     => "1 hour",
                    :tricks       => "none",
                    :description  => "Skating and hanging with patches",
                    :user_id      => drama.id } )
    end



    describe "belongs to user" do
      describe "#user" do
        it "returns the skatelog's user" do
          skatelog = Skatelog.first
          expected_user = User.find(skatelog.user_id)

          expect(skatelog.user).to eq expected_user
        end

        it "returns a User object" do
          skatelog = Skatelog.first
          expect(skatelog.user).to be_instance_of User
        end
      end

    end
  end
end



