require 'rails_helper'

describe List do 
	it {should validate_presence_of :name}
	it {should validate_presence_of :description}
	it {should have_many :tasks}
end

#BDD
	# it "validates presence of list name" do
	# 	list = List.new({name: ""})
	# 	expect(list.save).to eq false
	