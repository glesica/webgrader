defmodule Webgrader.SubmissionController do
  use Webgrader.Web, :controller

  def list(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, _params) do
    render conn, "index.html"
  end

  def create(conn, _params) do
    render conn, "index.html"
  end

  def delete(conn, _params) do
    render conn, "index.html"
  end
end
