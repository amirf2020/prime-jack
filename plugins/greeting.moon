greetings =
	"Hi `%s` !": "[Hh]i #{bot_first_name}"
	"Bye `%s` !": "[Bb]ye #{bot_first_name}"
	"Bye `%s` !": "[Gg]oodbye #{bot_first_name}"
	"Yo `%s` !": "[Yy]o #{bot_first_name}"
	"Hi `%s` !
I'm `#{bot_first_name}`
i can help you? you joing in the channel me:👇👇👇👇
[channel me](https://telegram.me/PrimeTeam) - creater me : @sorblack": "^[!/#]about$"
--Plz do not remove the repo url :^)
run = (msg,matches) ->
	for k,v in pairs greetings
		if msg.text\match v
			return k\format msg.from.first_name



description = "*About and greeting*"
usage = "`/about`
Info about #{bot_first_name}
`Hi #{bot_first_name}`
`Bye #{bot_first_name}`
"
patterns = greetings
return {
	:run
	:description
	:usage
	:patterns
}
