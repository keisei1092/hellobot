# Description
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

CronJob = require('cron').CronJob

module.exports = (robot) ->
  new CronJob '0 0,3,12,15,18,21 * *', () =>
    robot.messageRoom "general", "進捗どうですか"
  , null, true, "Asia/Tokyo"