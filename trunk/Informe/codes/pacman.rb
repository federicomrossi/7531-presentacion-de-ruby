class Fantasma
  def initialize
    @estado=Cazador.new(self)
  end
  
  def cambiarEstado(estado)
    @estado=estado
  end
  
  def molestar!
    @estado.molestar!
  end
  
  def presa!
    @estado.presa!
  end
  
  def comer!
    @estado.comer!
  end
  
  def mover
    @estado.mover
  end
  
  def mostrar
    @estado.mostrar
  end
end

class EstadoFantasma 
  def initialize(fantasma)
    @fantasma = fantasma
	@nombreEstado =""
	@nivelAgresividad = 0
	@escalaAgresividad = ["Normal", "Molesto", "Furioso"]
  end
  
  def mostrar
    p("Estoy en estado #{@nombreEstado} y estoy con agresividad #{@escalaAgresividad[@nivelAgresividad]}")
  end
  
  def molestar!
  end
  
  def presa!
  end
  
  def comer!
  end
  
  def mover
  end
end

class Cazador <  EstadoFantasma  
  def initialize(fantasma)
    super(fantasma)
	@nombreEstado="Cazador"
  end

  def molestar!
    @nivelAgresividad = @nivelAgresividad + 1 
	if(@nivelAgresividad > 2)
	  @nivelAgresividad = 0
	end
	  
	mostrar
  end
  
  def presa!
    @fantasma.cambiarEstado(Presa.new(@fantasma))
	@fantasma.mostrar
  end
  
  def comer!
    p("No me podes comer, soy cazador.")
  end
  
  def mover
    p("Me muevo.") 
	mostrar
  end
end

class Presa <  EstadoFantasma
  def initialize(fantasma)
    super(fantasma)
	@nombreEstado="Presa"
	@esPresa = true
	@semaphore = Mutex.new
	Thread.new{
		  sleep(10)
		  @semaphore.lock
		  if(@esPresa)
			@fantasma.cambiarEstado(Cazador.new(@fantasma))
			@fantasma.mostrar
		  end
		  @semaphore.unlock
		}
  end

  def molestar!
    p("Soy presa, no me podes molestar")
  end
  
  def presa!
    p("Ya soy presa!")
  end
  
  def comer!
    @semaphore.lock
    if(@esPresa)
      p("Soy presa, me mataste.")
	  @esPresa=false
	  @fantasma.cambiarEstado(Muerto.new(@fantasma))
	  @fantasma.mostrar
	end
	@semaphore.unlock
  end
  
  def mover
    p("Me muevo. #{super.mostrar}") 
  end
end

class Muerto <  EstadoFantasma
  def initialize(fantasma)
    super(fantasma)
	@nombreEstado="Muerto"
	Thread.new{
		sleep(10)
		@fantasma.cambiarEstado(Cazador.new(@fantasma))
		@fantasma.mostrar
	}
  end
  def molestar!
    p("Estoy muerto, no me podes molestar")
  end
  
  def presa!
    p("Estoy muerto, no me podes convertir en presa")
  end
  
  def comer!
    p("Estoy muerto, no me podes comer")
  end
  
  def mover
    p("Estoy muerto, no me puedo mover")
  end
end

fantasma = Fantasma.new
salir = false
while(!salir)
 line = gets
 fantasma.molestar! if line =~ /molestar/
 fantasma.mover if line =~ /mover/
 fantasma.mostrar if line =~ /mostrar/
 fantasma.presa! if line =~ /presa/
 fantasma.comer! if line =~ /comer/
 salir =true if line =~ /salir/
end

