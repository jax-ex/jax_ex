defmodule JaxEx.Accounts.Encryption do
  alias Comeonin.Bcrypt
  alias JaxEx.Accounts.User

  def hash_password(password), do: Bcrypt.hashpwsalt(password)

  def validate_password(%User{} = user, password), do: Bcrypt.check_pass(user, password)
end
