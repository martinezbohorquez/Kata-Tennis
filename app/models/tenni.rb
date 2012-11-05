class Tenni < ActiveRecord::Base
  attr_accessible :ganador, :jugador1, :jugador2, :p1, :p2
  
  
  def Apuntar(jugador)
    puntajes = [0, 15, 30, 40, 41]
    
    if jugador==jugador1
      self.p1 = puntajes[puntajes.index(self.p1) + 1]  
    end
    
    if jugador==jugador2
      self.p2 = puntajes[puntajes.index(self.p2) + 1]
    end  
    
    ValidarIguales()
    ValidarGanador(jugador)
    
  end
  
  def ValidarIguales()
    if (self.p1 == 40) && (self.p2 == 40)
      self.p1 = 30
      self.p2 = 30
    end
  end
  
  def ValidarGanador(jugador)
    if (self.p1 == 41 || self.p2 == 41)
      puts "El ganador es #{jugador}"
    end
  end
  
    def MostrarPuntaje(jugador)
      if jugador==jugador1
        puts "El puntaje del jugador 1 es #{p1}"  
      end
      
      if jugador==jugador2
        puts "El puntaje del jugador 12es #{p2}"
      end  
  end
  
  
end
