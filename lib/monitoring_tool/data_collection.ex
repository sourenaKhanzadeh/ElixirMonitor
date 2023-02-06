defmodule DataCollection do
  use HTTPoison.Base
  @moduledoc """ 
  This module is responsible for collecting data from the database and sending it to the data warehouse.
  """
  @expected_fields ~w(
    login id avatar_url gravatar_id url html_url followers_url
    following_url gists_url starred_url subscriptions_url
    organizations_url repos_url events_url received_events_url type
    site_admin name company blog location email hireable bio
    public_repos public_gists followers following created_at updated_at
  )

  @doc """
  Sends a request to the GitHub API.
  """
 def process_request_url(url) do
    "https://api.github.com" <> url
  end
 
  @doc """
  Parses the response body.
  """
  def process_response_body(body) do
    body
    |> Poison.decode!
    |> Map.take(@expected_fields)
    |> Enum.map(fn({k, v}) -> {String.to_atom(k), v} end)
  end
  @doc """
  Collects data from the database and sends it to the data warehouse.
  """
  def collect_data do
    # do some data collection
      
  end
end
