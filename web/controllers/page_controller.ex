defmodule Staticformio.PageController do
  use Staticformio.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
