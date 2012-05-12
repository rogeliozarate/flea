require 'sinatra'
require 'sinatra/reloader' if development?
require 'haml'
require 'sass'


get '/' do
  "Hola"
end
  