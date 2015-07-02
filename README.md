# fabric8's hubot irc

This is a [hubot](https://hubot.github.com) image configured with an IRC adaptor used to communicate with fabric8.

## Configuration Variables

_NOTE_ see [hubot base image](https://github.com/fabric8io/hubot-base) for extra plugin configuration variables

- `HUBOT_IRC_SERVER` The IRC server
- `HUBOT_IRC_ROOMS` List of rooms to join including '#' prefix
- `HUBOT_IRC_NICK` The name that hubot should joing the room as
- `HUBOT_IRC_DEBUG` Enables debug logging
- `KUBERNETES_TRUST_CERT` Used when communicating with Kubernetes API

### Example:  

		export HUBOT_IRC_SERVER=localhost  
		export HUBOT_IRC_ROOMS=#fabric8-bot  
		export HUBOT_IRC_NICK=fabric8  
		export HUBOT_IRC_DEBUG=true  
		export KUBERNETES_TRUST_CERT=true  


