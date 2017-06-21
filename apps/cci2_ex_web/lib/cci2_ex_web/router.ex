defmodule Cci2Ex.Web.Router do
  use Cci2Ex.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Cci2Ex.Web do
    pipe_through :api
  end
end
