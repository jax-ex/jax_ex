defmodule JaxExWeb.Resolvers.Content do
  def list_posts(_parent, _args, _resolution) do
    {:ok, JaxEx.Content.list_posts()}
  end
end
