defmodule XsltGame.Config do
  use ExConfig.Object

  @shortdoc "HTTP interface port"
  defproperty http_port, default: 9999

  def sys_config(config) do
    [
     epg_pool: [
                pools: [
                        {
                         :main_pool,
                         [size: 1, max_overflow: 0],
                         [
                          hostname: '127.0.0.1',
                          database: 'xslt_game',
                          username: 'xslt_game',
                          password: 'xslt_game'
                         ]
                        }
                  ]
       ]
    ]
  end

  def sys_config!(filename, config) do
    File.write!(filename, :io_lib.format("~p.~n",[sys_config(config)]))
  end
end