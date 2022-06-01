defmodule PhxwsWeb.PageController do
  use PhxwsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
