# Description:
#   Interact with fabric8
#
# Dependencies:
#   None
#
# Configuration:
#   KUBERNETES_MASTER

# Commands:
#   fabric8 get pods - lists the running pods

#
# Author:
#   fabric8.io

fabric8GetPods = (msg) ->
    process.env.NODE_TLS_REJECT_UNAUTHORIZED = '0';
    host = process.env.KUBERNETES_SERVICE_HOST
    port = process.env.KUBERNETES_SERVICE_PORT
    path = "https://#{host}:#{port}/api/v1beta2/pods"

    req = msg.http(path)

    req.header('Content-Length', 0)
    req.post() (err, res, body) ->
        if err
          msg.reply "fabric8 says: #{err}"
        else if 200 <= res.statusCode < 400 # Or, not an error code.
          msg.reply "Pods: (#{res}) #{body}"
        else
          msg.reply "fabric8 says: #{res.statusCode} #{body}"

module.exports = (robot) ->
  robot.respond /get pods/i, (msg) ->
    fabric8GetPods msg, msg.match[1]
