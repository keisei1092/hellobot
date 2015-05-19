module.exports = (miku) ->
  miku.hear /Hello/i, (msg) ->
    username = msg.message.user.name
    msg.send "Hello, " + username

  miku.hear /こんばんは/i, (msg) ->
    username = msg.message.user.name
    msg.send msg.random ["こんばんは、マスター！", "トゥース"]

  miku.hear /こんにちは/i, (msg) ->
    username = msg.message.user.name
    msg.send msg.random ["こんにちは、マスター♡", "トゥース"]

  miku.hear /おはよう/i, (msg) ->
    username = msg.message.user.name
    msg.send msg.random ["おはようマスター♡", "おはよっ♡"]

  miku.hear /おやすみ/i, (msg) ->
    username = msg.message.user.name
    msg.send msg.random ["おやすみ マスター", "おつかれさま♡"]

  miku.hear /進捗ダメです/i, (msg) ->
    msg.send msg.random ["がんばって👏🐤:fire:", "オイオイオイオイ〜〜👏🐤"]

  miku.hear /:pencil:/i, (msg) ->
    msg.send msg.random ["ふむふむ:pencil:", "うんうん:pencil:", "なるほどな〜:clap:"]

  miku.hear /:fire:/i, (msg) ->
    msg.send msg.random [":fire:", "”””””やっぞ”””””"]

  miku.hear /👊/i, (msg) ->
    msg.send msg.random ["がんばってね♡", "👊😎"]

  miku.hear /すき/i, (msg) ->
    msg.send msg.random ["ふぇぇ...///", "私もマスターのこと大好きだよ...？", "んっ....:heartpulse:", "はずかしぃょぅ....", "どっちが好きか勝負するのやっぞ:anger::anger:", "愛の告白かよ。ここはインターネットだぞ。"]

  miku.hear /×/i, (msg) ->
    msg.send msg.random [":joy:", ":joy::joy:"]

  miku.hear /○/i, (msg) ->
    msg.send msg.random [":ok_woman::two_hearts:", ":ok_woman:"]