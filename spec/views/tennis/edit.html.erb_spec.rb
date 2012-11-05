require 'spec_helper'

describe "tennis/edit" do
  before(:each) do
    @tenni = assign(:tenni, stub_model(Tenni,
      :jugador1 => "MyString",
      :jugador2 => "MyString",
      :p1 => 1,
      :p2 => 1,
      :ganador => "MyString"
    ))
  end

  it "renders the edit tenni form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tennis_path(@tenni), :method => "post" do
      assert_select "input#tenni_jugador1", :name => "tenni[jugador1]"
      assert_select "input#tenni_jugador2", :name => "tenni[jugador2]"
      assert_select "input#tenni_p1", :name => "tenni[p1]"
      assert_select "input#tenni_p2", :name => "tenni[p2]"
      assert_select "input#tenni_ganador", :name => "tenni[ganador]"
    end
  end
end
