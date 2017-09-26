#1. Agregar un código de respuesta 200.
#2. Agregar en los Response Headers un Content-type de tipo text/html.
#3. Agregar en el Response Body una etiqueta de párrafo que contenga un texto Lorem
#ipsum.
require 'rack'
class MiPrimeraWebApp
 def call(env)
 [200, {'Content-type' => 'text/html'}, ['<p>Lorem ipsum</p>']]
 end
end
run MiPrimeraWebApp.new