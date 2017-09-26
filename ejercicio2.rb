class MiClase
 attr_accessor :name
 def initialize(name)
 @name = name
 end
 def self.saludar
 "Hola! Soy la clase #{name}"
 end
end
c = MiClase.new('Clase Uno')
c.name = 'Nombre Nuevo'
puts c.name
puts MiClase.saludar