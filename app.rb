# encoding: UTF-8


require 'sinatra'
require 'sinatra/reloader' if development?
require 'haml'
require 'sass'
require 'sinatra/flash'

set :haml, :format => :html5


quotes = ["... actualizar tus datos en el IFE",
          "... averiguar quién es tu diputado y cómo contactarlo",
          "... escribirle a los candidatos sobre tus inquietudes",
          "... leer la Constitución",
          "... conocer el reglamento de Policia y Transito de tu ciudad",
          "... participar en los observatorio coudadanos",
          "... integrarte al comite de colonos de donde vives",
          "... votar y seguir el desempeño de quien fue favorecido con tu voto",
          "... asistir a las Juntas de Cabildo en tu municipio",
          "... denunciar los hechos de violencia o crimenes",
          "... seguir a tus representantes en las redes sociales",
          "... meditar tu voto",
          "... discutir con tus amistades lo que deberia hacer un buen gobierno",
          "... apoyar a los equipos deportivos representativos de tu ciudad y estado",
          "... adoptar un arbol",
          "... mantener limpia tu acera",
          "... formar parte de la Asociación de padres de familia de la escuela de tus hijos",
          "... registrarte como donante de organos",
          "... cederle el paso a los peatones",
          "... ser cortes al conducir",
          "... apagar la televisión un rato y leer",
          "... cuidar tu salud",
          "... no ser indiferente ante la violencia",
          "... formar parte de la Sociedad de Alumnos de tu escuela",
          "... respetar a los cicilistas y peatones por igual",
          "... utiliza el transporte público",
          "... participa como voluntario en alguna asociación civil",
          "... participa como obsevador ciudadano en elecciones",
          "... participa como funcionario de casilla si eres requerido"
         ]

get '/' do
  @quote =  quotes[Random.rand(quotes.size-1)]
  haml :index
end

get '/about' do
  haml :about
end


get '/stylesheets/global.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :global
end