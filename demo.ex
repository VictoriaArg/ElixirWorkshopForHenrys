defmodule Demo do
  @moduledoc """
  Documentation for `Demo`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Demo.hello()
      "Hello World!"

  """

  alias Demo.DataTypesDemo

  #functions and arguments
  def hello do
    "Hello Universe!"
  end

  def hello(name) when is_binary(name) do
    "Hello #{name}! Nice to meet you"
  end

  def hello(_name, height) do
    "Hello! You are #{evaluate_height(height)}"
  end

  #guards and private functions
  defp evaluate_height(height) when height > 1.8, do: "so tall!!"
  defp evaluate_height(height) when height > 1.6, do: "as tall as me :)"
  defp evaluate_height(height) when height <= 1.6, do: "allowed to tell me jokes like 'how's the weather up there'"

  #pipe operator, data transformation
  def study_hours_in_5_years(study_hours_per_week) do
   study_hours_in_5_years =
   study_hours_per_week
   |> multiply_by_weeks_in_a_month()
   |> multiply_by_months_in_a_year()
   |> multiply_by_five_years()

   "If you keep this study routine, in 5 years you will have studied for #{study_hours_in_5_years} hours, so cool!"
  end

  #Writting functions in one line
  defp multiply_by_weeks_in_a_month(number), do: number * 4
  defp multiply_by_months_in_a_year(number), do: number * 12
  defp multiply_by_five_years(number), do: number * 5

  #using functions from other module
  def i_want_fruits, do: DataTypesDemo.gimme_fruits
  def i_want_fire_type_pokemons, do: DataTypesDemo.fire_pokemons
  def i_want_to_loose_my_mind, do: DataTypesDemo.gimme_that_complex_data_structure
end

IO.puts Demo.hello()
IO.puts Demo.hello("Vicky")
IO.puts Demo.hello("Vicky", 1.71)

