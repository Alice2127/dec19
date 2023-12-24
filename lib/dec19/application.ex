defmodule Dec19.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Dec19Web.Telemetry,
      Dec19.Repo,
      {DNSCluster, query: Application.get_env(:dec19, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Dec19.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Dec19.Finch},
      # Start a worker by calling: Dec19.Worker.start_link(arg)
      # {Dec19.Worker, arg},
      # Start to serve requests, typically the last entry
      Dec19Web.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Dec19.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Dec19Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
