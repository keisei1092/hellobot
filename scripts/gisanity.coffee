tumblr = require "tumblrbot"
SOURCES = {
  "http://mikugifanime.tumblr.com/"
}

getGit = (blog, msg) ->
  tumblr.photos(blog).random (post) ->
    msg.send post.photos[0].original_size.url

module.exports = (robot) ->
  robot.respond /miku/i, (msg) ->
    blog = msg.random Object.keys(SOURCES)
    getGif blog, msg