defmodule Demo.DataTypesDemo do
  @moduledoc """
    Lets see this documentation on our console, can we?

    We will later try this:
    ranks = [ "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A" ]
    suits = [ "♣", "♦", "♥", "♠" ]

    deck = for rank <- ranks, suit <- suits, do: {rank, suit}
  """

@list_of_fruits ["apple", "banana", "kiwi", "orange", "pear", "mango", "strawberry", "blueberry", "peach"]

@map_of_fire_pokemons %{
  charmander: {"charmander", 004},
  charmeleon: {"charmeleon", 005},
  charizard: {"charizard", 006},
  vulpix: {"vulpix", 037},
  ninetales: {"ninetales", 038},
  growlithe: {"growlite", 058},
  arcanine: {"arcanine", 059},
  ponyta: {"ponyta", 077},
  rapidash: {"rapidash", 078}}

@complex_structure_to_burn_your_mind %{
  first: %{"Also a map" => "but my keys are strings, not atoms", "I can have many elements" => 154786, "I can have values of different types" => :even_atoms, "and even" => ["a", "list"], "and_maps" => %{yes: "map inside map inside map"}},
  second: %{map: "but_with_atoms", and_I: "have to respect the structure I choose", when_parsing_json: "you will get the other map's structure", but: "I like this one, cause it's cleaner"},
  third: ["are", "you", "kidding", "me?"],
  fourth: %{I_kid_you_not: %{try: %{reaching: %{me: %{if: "you can :)"}}}}}
}

def gimme_fruits(), do: @list_of_fruits
def fire_pokemons(), do: @map_of_fire_pokemons
def gimme_that_complex_data_structure(), do: @complex_structure_to_burn_your_mind

end

