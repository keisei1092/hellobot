module.exports = (robot) ->
  robot.hear /Hello/i, (msg) ->
    username = msg.message.user.name
    msg.send "Hello, " + username

  robot.hear /こんばんは/i, (msg) ->
    username = msg.message.user.name
    msg.send "こんばんは、マスター！"

  robot.hear /こんにちは/i, (msg) ->
    username = msg.message.user.name
    msg.send "こんにちは、マスター♡"

  robot.hear /おはよう/i, (msg) ->
    username = msg.message.user.name
    msg.send "おはようマスター♡"

  robot.hear /おやすみ/i, (msg) ->
    username = msg.message.user.name
    msg.send "おやすみ マスター"

  robot.hear /進捗ダメです/i, (msg) ->
    msg.send "がんばって👏🐤🔥"

  robot.hear /✎/i, (msg) ->
    msg.send "ふむふむ✎"