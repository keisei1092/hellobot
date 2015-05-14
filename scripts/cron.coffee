# Description
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  new CronJob '00 00 00,03,12,15,18,21 * * *', () =>
    robot.send { room: "general" }, "進捗どうですか"
  , null, true, "Asia/Tokyo"