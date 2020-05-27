defmodule JaxExWeb.Schema.AccountTypes do
  use Absinthe.Schema.Notation

  alias JaxExWeb.Resolvers

  @desc "A user of the blog"
  object :user do
    field :id, :id
    field :username, :string
    field :email, :string

    field :posts, list_of(:post) do
      arg :date, :date
      resolve &Resolvers.Content.list_posts/3
    end
  end
end
