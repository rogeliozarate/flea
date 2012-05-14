# encoding: UTF-8


require 'sinatra'
require 'sinatra/reloader' if development?
require 'haml'
require 'sass'

set :haml, :format => :html5

quotes = ["Actualizar tus datos en el IFE",
          "Averiguar quién es tu diputado y cómo contactarlo",
          "Escribirle a los candidatos sobre tus inquietudes",
          "Leer la Constitución",
          "Conocer el reglamento de Policia y Transito de tu ciudad",
          "Participar en los observatorio coudadanos",
          "Integrarte al comite de colonos de donde vives",
          "Votar y seguir el desempeño de quien fue favorecido con tu voto",
          "Asistir a las Juntas de Cabildo en tu municipio",
          "Denunciar a los delicuentes",
          "Seguir a tus representantes en las redes sociales",
          "Meditar tu voto",
          "Discutir con tus amistades lo que deberia hacer un buen gobierno",
          "Apoyar a los equipos deportivos representativos de tu ciudad y estado",
          "Adoptar un arbol",
          "Mantener limpia tu acera",
          "Formar parte de la Asociación de padres de familia de la escuela de tus hijos",
          "Registrarte como donante de organos",
          "Cederle el paso a los peatones",
          "Ser cortes al conducir",
          "Apagar la televisión un rato y leer",
          "Cuidar tu salud",
          "No ser indifeentes ante la violencia"
         ]

get '/' do
  @quote =  quotes[Random.rand(quotes.size-1)]
  @quote
  haml :index
end


get '/stylesheets/global.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :global
end