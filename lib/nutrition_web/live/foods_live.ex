defmodule Nutrition.FoodsLive do
  use NutritionWeb, :live_view

  alias LiveViewTodos.Todos

  def mount(_params, _session, socket) do
    {:ok, assign(socket, todos: Foods.list_units())}

  end
end