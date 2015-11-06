restify = require 'restify'
estaduais = require './routes/estaduais'
federais = require './routes/federais'

server = restify.createServer name: 'hackaton_project'

server.use restify.CORS()
# server.use restify.queryParser()

server.get '/estaduais', estaduais
server.get '/federais', federais

server.listen 8080