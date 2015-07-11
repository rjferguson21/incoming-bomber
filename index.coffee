client = (require('./lib/mqtt')).init()
Handler = require 'mqtt-handler'
player = require('play-sound')(player: 'mplayer')

handler = new Handler(subscriptions: ['scenes/#', '$SYS/broker/clients/active'], client)

handler.register 'scenes/door',
  (topic, message) ->
    player.play './sounds/T2Male5.wrn.bomber.WAV' if  message is '1'

handler.register 'scenes/sensors',
  (topic, message) ->
    player.play './sounds/T2Male4.gbl.shazbot.WAV' if  message is '1'
