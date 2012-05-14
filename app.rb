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
          "VOTE AT YOUR LOCAL FUCKING ELECTIONS",
          "SHOW UP AT YOUR BORING ASS CITY HALL MEETINGS",
          "YOU SEE THAT FUCKING POTHOLE? REPORT THAT SHIT TO 311 ALREADY!",
          "FUCKING REGISTER TO VOTE ALREADY!",
          "SIGN UP TO FOLLOW YOUR CITY ON TWITTER ALREADY!",
          "GET A FUCKING LIBRARY CARD!"
          ]

get '/' do
  @quote =  quotes[Random.rand(quotes.size-1)]
  @quote
  haml :index
end
  