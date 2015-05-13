# Description
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronTest = new cronJob (
    cronTime: "* 0, 3, 12, 15, 18, 21 * * *" # 分 時 日 月 曜日
    start:    true
    timeZone: "Asia/Tokyo"
    onTick: ->
      robot.send { room: "#general" }, "進捗どうですか"
  )
    cronTest.start()