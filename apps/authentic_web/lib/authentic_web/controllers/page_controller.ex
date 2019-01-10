defmodule AuthenticWeb.PageController do
  use AuthenticWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
