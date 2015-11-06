restify = require 'restify'
client = restify.createJsonClient url: 'http://datapoa.com.br/api'

estaduaisHandler = (req, res, next) ->
	baseUrl = "/api/action/datastore_search?resource_id=9b019d7c-1956-4cf8-bc75-9041284d5d81"
	q = req.query()
	baseUrl += "&#{q}" if q?
	client.get baseUrl, (err, clientReq, clientRes, obj) ->
		res.json JSON.parse clientRes.body

module.exports = estaduaisHandler