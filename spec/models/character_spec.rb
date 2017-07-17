require 'rails_helper'

RSpec.describe Character, type: :model do
	context "Character" do
	  it 'Character exists'do
	    char = Character.new
	    expect(char).to be_truthy
	  end

	  it 'Default value cash'do
	    char = Character.new
	    expect(char.cash).to eq(0)
	  end
	end




end

