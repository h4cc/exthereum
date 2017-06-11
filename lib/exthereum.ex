defmodule Exthereum do
  alias Exthereum.Accounts
  @moduledoc """
  Documentation for Exthereum.
  """

  @doc """
  Get Version

  ## Examples

      iex> Exthereum.get_version
      {:ok, "Geth/v1.6.5-stable-cf87713d/darwin-amd64/go1.8.3"}

      iex> Exthereum.get_balance("0xfE8bf4ca8A6170E759E89EDB5cc9adec3e33493f")
      {:ok, "Geth/v1.6.5-stable-cf87713d/darwin-amd64/go1.8.3"}

  """
  @spec get_version :: {:ok, String.t} | {:error, String.t}
  def get_version do
    Accounts.get_version
  end

  @spec get_balance(String.t) :: {:ok, float} | {:error, String.t}
  def get_balance(account_hash) do
    Accounts.get_balance(account_hash)
  end
end
