require 'rails_helper'

RSpec.describe "characters/new", type: :view do
  before(:each) do
    assign(:character, Character.new(
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

  it "renders new character form" do
    render

    assert_select "form[action=?][method=?]", characters_path, "post" do

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
