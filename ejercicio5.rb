#Transformar la clase Herviboro en un módulo. Implementar el módulo en la clase Conejo
#mediante Mixin para poder acceder al método dieta desde la instancia. Finalmente
#imprimir la definición de Hervíboro.

module Herviboro
  @@definir = 'Sólo me alimento de vegetales!'
 def self.definir
  @@definir
 end
 def dieta
 puts "Soy un Herviboro!"
 end
end #herviboro

class Animal
 def saludar
 puts "Soy un animal!"
 end
end #animal

class Conejo < Animal	
	include Herviboro
def initialize(name)
 	
 @name = name
 end
end
conejo = Conejo.new('Bugs Bunny')
conejo.saludar
conejo.dieta
Herviboro.definir