require 'rails_helper'

RSpec.describe "characters/show", type: :view do
  before(:each) do
    @character = assign(:character, Character.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Race/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11.5/)
  end
end
