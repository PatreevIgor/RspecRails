require 'rails_helper'

RSpec.describe Character, type: :model do
	context 'Character' do
	  it 'Character exists' do
	    char = Character.new
	    expect(char).to be_truthy
	  end

	  it 'Default value cash' do
	    char = Character.new
	    expect(char.cash).to eq(0)
	  end

	  it 'Attributes object list' do
	    char  = Character.new
	    expect(char.attributes).not_to be_empty
	  end

	  it 'Cash should be better or equal 0' do
	    char  = Character.new
	    char.cash.should be >= 0
	  end

	  it 'Сomparison of the user class' do
	    char  = Character.new
	    expect(char.class).to be(Character)
	  end
	end
end

