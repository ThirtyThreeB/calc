defmodule Operations do

  def operate(nil), do: nil
  def operate(params) do
    result =
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

    result
  end
end
