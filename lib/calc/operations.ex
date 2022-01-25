defmodule Operations do
  def operate(nil), do: nil

  def operate(params) do
    case params["operator"] do
      "+" ->
        String.to_integer(params["firstNumber"]) + String.to_integer(params["secondNumber"])

      "-" ->
        String.to_integer(params["firstNumber"]) - String.to_integer(params["secondNumber"])

      "*" ->
        String.to_integer(params["firstNumber"]) * String.to_integer(params["secondNumber"])

      "/" ->
        String.to_integer(params["firstNumber"]) / String.to_integer(params["secondNumber"])

      nil ->
        0
    end
  end
end
