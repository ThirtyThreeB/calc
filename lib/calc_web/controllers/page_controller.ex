defmodule CalcWeb.PageController do
  use CalcWeb, :controller

  def index(conn, params) do

    if (params |> is_nil()) do
      conn
      |> put_flash(:info, "")
      |> render("index.html")
    else
      result = Operations.operate(params)
      conn
      |> render("index.html", result: result, params: params)
    end

  end
end
