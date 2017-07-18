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
	    expect(char.attributes_name_and_age).not_to be_empty
	  end

	  it 'Cash should be better or equal 0' do
	    char  = Character.new
	    char.cash.should be >= 0
	  end

	  it 'Сomparison of the user class' do
	    char  = Character.new
	    expect(char.class).to be(Character)
	  end

	  it 'Testing intervals' do
	    char  = Character.new
	    expect(char.cash).to be_between(-1, 1).inclusive
	  end

	  it 'Testing expression' do
	    char  = Character.new
	    char.name = 'Batman_user'
	    expect(char.name).to match(/user/)
	  end

	  it 'Testing expression' do
	    char  = Character.new
	    char.name = 'Batman_user'
	    expect(char.name).to match(/user/)
	  end

	  it 'Testing current Class' do
	    char  = Character.new
	    expect(char).to be_instance_of(Character)
	  end
	end
end

