require 'rubygems'
require 'bundler/setup'

require 'sinatra'
require 'prawn'

set :raise_errors => true

get '/' do
  content_type 'application/pdf'

  pdf = Prawn::Document.new
  pdf.text "Hello Anynines, Prawn and Sinatra"
  pdf.render
end
