defmodule CalcWeb.PageController do
  use CalcWeb, :controller

  def index(conn, _params) do

    conn
    |> render("index.html", result: nil)
  end

  def calculate(conn, params) do
    result = Operations.operate(params)

    conn
    |> render("index.html", result: result, params: params)
  end
end
