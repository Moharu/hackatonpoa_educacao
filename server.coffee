port = process.env.VCAP_APP_PORT or 8080
hostname = process.env.VCAP_APP_HOST or 'localhost'


restify = require 'restify'
estaduais = require './routes/estaduais'
federais = require './routes/federais'

server = restify.createServer name: 'hackaton_project'

server.use restify.CORS()
# server.use restify.queryParser()

server.get '/estaduais', estaduais
server.get '/federais', federais

server.listen port, hostname