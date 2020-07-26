defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create deck makes 52 cards" do
    deck_lenth = length(Cards.create_deck())
    assert deck_lenth == 52
  end

  test "suffeling the deck randomizes it" do
    deck = Cards.create_deck()
    refute deck == Cards.shuffle(deck)
  end
end
