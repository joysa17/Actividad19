class Vehicle
 def initialize(model, year)
  @model = model
  @year = year
  @start = false
 end
 def engine_start
  @start = true
 end
end

#1. Crear una clase Car que herede de Vehicle
#2. El constructor de Car, además de heredar las propiedades de Vehicle, debe incluir un
#   contador de instancias de Car.
#3. Crear un método de clase en Car que devuelva la cantidad de instancias.
#4. El método engine_start heredado debe además imprimir 'El motor se ha encendido!'.
#   Instanciar 10 Cars.
#5. Consultar la cantidad de instancias generadas de Car mediante el método de clase
#   creado.
class Car < Vehicle
	    @@instancia = 0
	def initialize(model, year)
		super
		@@instancia += 1
	end
	def self.car_count
		@@instancia
	end
	def engine_start
		super
		puts 'El motor se ha encendido!'
		
	end	
end
10.times do |i|
	puts Car.new('aa','aa').engine_start
end

puts Car.car_count	
