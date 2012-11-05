require 'spec_helper'

describe Tenni do
  
  before do 
    @t = Tenni.new(jugador1: "Ana", jugador2: "Pablo", p1: 0, p2: 0)
  end
  
  subject { @t }
  
  describe "Cuando el jugador 1 gana un punto" do
    before do
        @t.p1 = 15      
        @t.Apuntar(@t.jugador1)
    end
    
    it { @t.p1.should be == 30 }
  end
  
    describe "Cuando el jugador 2 gana un punto" do
    before do
        @t.p2 = 30
        @t.Apuntar(@t.jugador2)
    end
    
    it { @t.p2.should be == 40 }
  end
  
  describe "Cuando los puntajes son iguales" do
      before do
      @t.p1 = 40
      @t.p2 = 30  
      @t.Apuntar(@t.jugador2)
    end
      it { @t.p1.should be == 30 }
      it { @t.p2.should be == 30 }
  end
  
    describe "Validar ganador" do
      before do
      @t.p1 = 40
      @t.p2 = 30  
      @t.Apuntar(@t.jugador1)
    end
      it { @t.p1.should be == 41 }
  end
  
end
