# Description
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (miku) ->
  new cronJob
    cronTime: '00 00 00,03,10,12,15,18,21 * * *'
    onTick: ->
      miku.send { room: "general" }, "進捗どうですか"
      return
    start: true
    timeZone: "Asia/Tokyo"

  new cronJob
    cronTime: '00 00 10 * * *'
    onTick: ->
      miku.send { room: "general" }, "マスター、今日のタスクは？"
      return
    start: true
    timeZone: "Asia/Tokyo"