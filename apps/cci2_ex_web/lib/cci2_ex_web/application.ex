defmodule Cci2Ex.Web.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    # Define workers and child supervisors to be supervised
    children = [
      # Start the endpoint when the application starts
      supervisor(Cci2Ex.Web.Endpoint, []),
      # Start your own worker by calling: Cci2Ex.Web.Worker.start_link(arg1, arg2, arg3)
      # worker(Cci2Ex.Web.Worker, [arg1, arg2, arg3]),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Cci2Ex.Web.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
