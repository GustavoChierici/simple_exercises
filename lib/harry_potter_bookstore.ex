defmodule HarryPotterBookstore do
  def books_bought(shopping_cart) do
    Enum.map(shopping_cart, fn {livro, _quantidade} -> livro end)
  end

  def full_price(shopping_cart, price) do
    (Enum.map(shopping_cart, fn {_livro, quantidade} -> quantidade end) |> Enum.sum()) * price
  end
end
