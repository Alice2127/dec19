defmodule Dec19Web.ErrorJSONTest do
  use Dec19Web.ConnCase, async: true

  test "renders 404" do
    assert Dec19Web.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert Dec19Web.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
