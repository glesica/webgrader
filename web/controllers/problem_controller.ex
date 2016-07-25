defmodule Webgrader.ProblemController do
  use Webgrader.Web, :controller

  def list(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, _params) do
    render conn, "index.html"
  end
end
