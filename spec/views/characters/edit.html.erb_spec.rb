require 'rails_helper'

RSpec.describe "characters/edit", type: :view do
  before(:each) do
    @character = assign(:character, Character.create!(
      :name => "MyString",
      :age => 1,
      :race => "MyString",
      :hp => 1,
      :physical_attack => 1,
      :physical_defense => 1,
      :physical_critical_chance => 1,
      :evasion => 1,
      :accuracy => 1,
      :hp_recovery => 1,
      :chance_block_shield => 1,
      :cash => 1.5
    ))
  end

  it "renders the edit character form" do
    render

    assert_select "form[action=?][method=?]", character_path(@character), "post" do

      assert_select "input[name=?]", "character[name]"

      assert_select "input[name=?]", "character[age]"

      assert_select "input[name=?]", "character[race]"

      assert_select "input[name=?]", "character[hp]"

      assert_select "input[name=?]", "character[physical_attack]"

      assert_select "input[name=?]", "character[physical_defense]"

      assert_select "input[name=?]", "character[physical_critical_chance]"

      assert_select "input[name=?]", "character[evasion]"

      assert_select "input[name=?]", "character[accuracy]"

      assert_select "input[name=?]", "character[hp_recovery]"

      assert_select "input[name=?]", "character[chance_block_shield]"

      assert_select "input[name=?]", "character[cash]"
    end
  end
end
