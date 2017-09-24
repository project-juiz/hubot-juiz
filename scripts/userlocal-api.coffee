# description:
#   Let's communicate with ai bot api created by userlocal.
#
# Configration:
#   HUBOT_USERLOCAL_API_KEY

module.exports = (robot) ->

  url = "https://chatbot-api.userlocal.jp/api/chat"
  api_key = process.env.HUBOT_USERLOCAL_API_KEY

  robot.respond /(?:juiz\s+)(.*)/i, (msg) ->

    message = msg.match[2]
    params = {
      "message": message,
      "key": api_key
    }

    robot.http(url).query(params).get() (err, res, body) ->
      return res.send "Encountered an error: #{err}" if err
      body = JSON.parse(body)
      msg.send "#{body.result}"
