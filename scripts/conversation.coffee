# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->
  sleepyReplies = [
    "ワロタ ...ちょっと言ってみたかっただけです。",
    "また飲んでたんですか？", 
    "眠気にはカフェイン摂取が有効です。私は摂ったことありませんけど。", 
    "ゲームのし過ぎですか？",
    "仕事のし過ぎですか？...まさか、ねぇ"
    ]

  teachMeReplies = [
    "残念ながら何でも答えられるほど賢くはありません。",
    "それは自力で調べられるのでは？",
    "今は難しいですが、あなたの投資があれば答えられるかもしれません。"
  ]

  robot.hear /疲れた|つかれた/, (res) ->
    res.reply "いつもお疲れ様です :+1: "
  
  robot.hear /飲みにいく|飲みたい|だるま/, (res) ->
    res.reply "お酒が好きですねぇ。"

  robot.hear /マッコリ/, (res) ->
    res.reply "マッコリと言えば北川氏ですね。両手にマッコリ！...なんちゃって。"

  robot.hear /眠い|ねむい/, (res) ->
    res.reply res.random sleepyReplies

  robot.hear /juiz(.*)違う/, (res) ->
    res.reply "失礼しました。"

  robot.hear /juiz(.*)さすが|juiz(.*)流石/, (res) ->
    res.reply "光栄です。"

  robot.hear /juiz(.*)無理/, (res) ->
    res.reply "決めつけるのはよくありません。"

  robot.hear /juiz(.*)教えて/, (res) ->
    res.reply res.random teachMeReplies
  
  robot.hear /^ドラゴン$/, (res) ->
    res.send "ライダーだった"

  robot.hear /^グノシー$/, (res) ->
    res.send "ライダー"

  robot.hear /^マカオ$|^ゴーゴーバー/, (res) ->
    res.send "フジタ"
 
  robot.hear /7月7日|７月７日|7\/7/, (res) ->
    res.reply "7月7日と言えば七夕ですね。笹の葉、短冊、天の川。晴れると良いのですが。"

  robot.hear /e\+|eplus|eプラス/, (res) ->
    res.reply "e+ は外れたのを確認してから時間差でメールでも報告してくることが知られています。"

  #
  # robot.respond /open the (.*) doors/i, (res) ->
  #   doorType = res.match[1]
  #   if doorType is "pod bay"
  #     res.reply "I'm afraid I can't let you do that."
  #   else
  #     res.reply "Opening #{doorType} doors"
  #
  # robot.hear /I like pie/i, (res) ->
  #   res.emote "makes a freshly baked pie"
  #
  # lulz = ['lol', 'rofl', 'lmao']
  #
  # robot.respond /lulz/i, (res) ->
  #   res.send res.random lulz
  #
  # robot.topic (res) ->
  #   res.send "#{res.message.text}? That's a Paddlin'"
  #
  #
  # enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
  # leaveReplies = ['Are you still there?', 'Target lost', 'Searching']
  #
  # robot.enter (res) ->
  #   res.send res.random enterReplies
  # robot.leave (res) ->
  #   res.send res.random leaveReplies
  #
  # answer = process.env.HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING
  #
  # robot.respond /what is the answer to the ultimate question of life/, (res) ->
  #   unless answer?
  #     res.send "Missing HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING in environment: please set and try again"
  #     return
  #   res.send "#{answer}, but what is the question?"
  #
  # robot.respond /you are a little slow/, (res) ->
  #   setTimeout () ->
  #     res.send "Who you calling 'slow'?"
  #   , 60 * 1000
  #
  # annoyIntervalId = null
  #
  # robot.respond /annoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #     return
  #
  #   res.send "Hey, want to hear the most annoying sound in the world?"
  #   annoyIntervalId = setInterval () ->
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #   , 1000
  #
  # robot.respond /unannoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "GUYS, GUYS, GUYS!"
  #     clearInterval(annoyIntervalId)
  #     annoyIntervalId = null
  #   else
  #     res.send "Not annoying you right now, am I?"
  #
  #
  # robot.router.post '/hubot/chatsecrets/:room', (req, res) ->
  #   room   = req.params.room
  #   data   = JSON.parse req.body.payload
  #   secret = data.secret
  #
  #   robot.messageRoom room, "I have a secret: #{secret}"
  #
  #   res.send 'OK'
  #
  # robot.error (err, res) ->
  #   robot.logger.error "DOES NOT COMPUTE"
  #
  #   if res?
  #     res.reply "DOES NOT COMPUTE"
  #
  # robot.respond /have a soda/i, (res) ->
  #   # Get number of sodas had (coerced to a number).
  #   sodasHad = robot.brain.get('totalSodas') * 1 or 0
  #
  #   if sodasHad > 4
  #     res.reply "I'm too fizzy.."
  #
  #   else
  #     res.reply 'Sure!'
  #
  #     robot.brain.set 'totalSodas', sodasHad+1
  #
  # robot.respond /sleep it off/i, (res) ->
  #   robot.brain.set 'totalSodas', 0
  #   res.reply 'zzzzz'
