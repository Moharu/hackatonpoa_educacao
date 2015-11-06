restify = require 'restify'
client = restify.createJsonClient url: 'http://datapoa.com.br/api'

federaisHandler = (req, res, next) ->
	baseUrl = "/api/action/datastore_search?resource_id=c2da9ff7-94c8-43af-8141-d03f8d325739"
	q = req.query()
	baseUrl += "&#{q}" if q?
	client.get baseUrl, (err, clientReq, clientRes, obj) ->
		res.json JSON.parse clientRes.body

module.exports = federaisHandler