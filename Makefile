start:
	@elixir --erl "-pa ebin -pa deps" -e "config = XsltGame.Config.file!(%b{conf.exs}); config.sys_config!(%b{sys.config})"
	@iex --erl "-config sys" -S mix
