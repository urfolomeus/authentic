defmodule AuthenticWeb.SignupController do
  use AuthenticWeb, :controller

  def new(conn, _params) do
    render(conn, "new.html")
  end
end
