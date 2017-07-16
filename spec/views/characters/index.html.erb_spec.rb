require 'rails_helper'

RSpec.describe "characters/index", type: :view do
  before(:each) do
    assign(:characters, [
      Character.create!(
        :name => "Name",
        :age => 2,
        :race => "Race",
        :hp => 3,
        :physical_attack => 4,
        :physical_defense => 5,
        :physical_critical_chance => 6,
        :evasion => 7,
        :accuracy => 8,
        :hp_recovery => 9,
        :chance_block_shield => 10,
        :cash => 11.5
      ),
      Character.create!(
        :name => "Name",
        :age => 2,
        :race => "Race",
        :hp => 3,
        :physical_attack => 4,
        :physical_defense => 5,
        :physical_critical_chance => 6,
        :evasion => 7,
        :accuracy => 8,
        :hp_recovery => 9,
        :chance_block_shield => 10,
        :cash => 11.5
      )
    ])
  end

  it "renders a list of characters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Race".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.5.to_s, :count => 2
  end
end
