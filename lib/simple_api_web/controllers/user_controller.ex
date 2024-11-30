defmodule SimpleApiWeb.UserController do
  use SimpleApiWeb, :controller

  # Data dummy
  @users [
    %{id: 1, name: "Alice", email: "alice@example.com"},
    %{id: 2, name: "Bob", email: "bob@example.com"},
    %{id: 3, name: "Charlie", email: "charlie@example.com"}
  ]

  def index(conn, _params) do
    json(conn, @users)
  end

  def show(conn, %{"id" => id}) do
    user = Enum.find(@users, fn u -> u[:id] == String.to_integer(id) end)
    
    if user do
      json(conn, user)
    else
      send_resp(conn, 404, "User not found")
    end
  end
end
