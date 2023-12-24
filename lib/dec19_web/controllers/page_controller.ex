defmodule Dec19Web.PageController do
  use Dec19Web, :controller

  def home(conn, params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false, params: params)
  end
end
