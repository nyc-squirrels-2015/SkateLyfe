class CreateUsers < ActiveRecord::Migration
  def change
  create_table :users do |t|
  	t.string :name
  	t.string :username
  	t.string :board_type
  end
end
