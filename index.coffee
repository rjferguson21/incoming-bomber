client = (require('./lib/mqtt')).init()
Handler = require 'mqtt-handler'
player = require('play-sound')()

handler = new Handler(subscriptions: ['MyMQTT/#', 'envisalink/#', '$SYS/broker/clients/active'], client)

handler.register 'MyMQTT',
  (topic, message) ->
    player.play './sounds/T2Male5.wrn.bomber.WAV' if  message is '1'
