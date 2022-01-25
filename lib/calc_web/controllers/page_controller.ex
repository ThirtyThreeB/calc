defmodule CalcWeb.PageController do
  use CalcWeb, :controller

  def index(conn, params) do
    if (params |> is_nil()) do
      conn
      |> render("index.html")
    else
      calculate(conn, params)
    end
  end

  def calculate(conn, params) do
    result = Operations.operate(params)
      conn
      |> render("index.html", result: result, params: params)
  end
end
