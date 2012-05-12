# encoding: UTF-8


require 'sinatra'
require 'sinatra/reloader' if development?
require 'haml'
require 'sass'


quotes = ["Actualiza tus datos en el IFE",
          "Averigua quién es tu diputado y cómo contactarlo",
          "Escribele a los candidatos sobre tus inquietudes",
          "Lee la constitución",
          "Conoce el reglamento de Policia y Transito de tu ciudad",
          "Participa en los observatorio coudadanos",
          "Integrate al comite de colonos de donde vives",
          "VOTE AT YOUR LOCAL FUCKING ELECTIONS",
          "SHOW UP AT YOUR BORING ASS CITY HALL MEETINGS",
          "YOU SEE THAT FUCKING POTHOLE? REPORT THAT SHIT TO 311 ALREADY!",
          "FUCKING REGISTER TO VOTE ALREADY!",
          "SIGN UP TO FOLLOW YOUR CITY ON TWITTER ALREADY!",
          "GET A FUCKING LIBRARY CARD!"
          ]

get '/' do
  "Hola"
  "#{quotes[Random.rand(quotes.size-1)]}"
end
  