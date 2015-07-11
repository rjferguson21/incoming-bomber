config = require("../conf/config.coffee")
mqtt = require 'mqtt'

client = null
serial = null

# MQTT
conn =
  init: (serial_conn) ->
    client = mqtt.createClient config.mqtt.port, config.mqtt.host
    return client
  get: ->
    return client if client?
    return conn.init()

module.exports = conn
