# Description
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  new cronJob
    cronTime: '00 00 00,03,10,12,15,18,21 * * *'
    onTick: ->
      robot.send { room: "general" }, "進捗どうですか"
      return
    start: true
    timeZone: "Asia/Tokyo"