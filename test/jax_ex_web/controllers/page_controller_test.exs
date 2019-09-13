defmodule JaxExWeb.PageControllerTest do
  use JaxExWeb.ConnCase

  alias JaxEx.Accounts

  @create_attrs %{username: "username"}

  describe "unauthenticated" do
    test "GET /", %{conn: conn} do
      conn = get(conn, "/")
      assert redirected_to(conn) == Routes.session_path(conn, :new)
    end
  end

  describe "authenticated" do
    test "GET /", %{conn: conn} do
      {:ok, user} = Accounts.create_user(@create_attrs)
      conn = Plug.Test.init_test_session(conn, current_user_id: user.id)

      conn = get(conn, "/")
      assert html_response(conn, 200) =~ "Welcome to Phoenix!"
    end
  end
end
