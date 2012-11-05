require 'spec_helper'

describe "tennis/index" do
  before(:each) do
    assign(:tennis, [
      stub_model(Tenni,
        :jugador1 => "Jugador1",
        :jugador2 => "Jugador2",
        :p1 => 1,
        :p2 => 2,
        :ganador => "Ganador"
      ),
      stub_model(Tenni,
        :jugador1 => "Jugador1",
        :jugador2 => "Jugador2",
        :p1 => 1,
        :p2 => 2,
        :ganador => "Ganador"
      )
    ])
  end

  it "renders a list of tennis" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Jugador1".to_s, :count => 2
    assert_select "tr>td", :text => "Jugador2".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Ganador".to_s, :count => 2
  end
end
