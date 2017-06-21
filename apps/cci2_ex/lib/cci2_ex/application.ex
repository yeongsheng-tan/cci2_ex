defmodule Cci2Ex.Application do
  @moduledoc """
  The Cci2Ex Application Service.

  The cci2_ex system business domain lives in this application.

  Exposes API to clients such as the `Cci2Ex.Web` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(Cci2Ex.Repo, []),
    ], strategy: :one_for_one, name: Cci2Ex.Supervisor)
  end
end
