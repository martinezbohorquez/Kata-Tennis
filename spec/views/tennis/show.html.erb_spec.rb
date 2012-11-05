require 'spec_helper'

describe "tennis/show" do
  before(:each) do
    @tenni = assign(:tenni, stub_model(Tenni,
      :jugador1 => "Jugador1",
      :jugador2 => "Jugador2",
      :p1 => 1,
      :p2 => 2,
      :ganador => "Ganador"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Jugador1/)
    rendered.should match(/Jugador2/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Ganador/)
  end
end
