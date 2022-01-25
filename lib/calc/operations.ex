defmodule Operations do

  def operate(params) do

    result =
      unless (params |> is_nil()) do
        case params["operator"] do
          "+" ->
            (String.to_integer(params["firstNumber"]) + String.to_integer(params["secondNumber"]))
          "-" ->
            (String.to_integer(params["firstNumber"]) - String.to_integer(params["secondNumber"]))
          "*" ->
            (String.to_integer(params["firstNumber"]) * String.to_integer(params["secondNumber"]))
          "/" ->
            (String.to_integer(params["firstNumber"]) / String.to_integer(params["secondNumber"]))
          nil ->
            0
      end
    end
    result
  end
end
