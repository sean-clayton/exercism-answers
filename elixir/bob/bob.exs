defmodule Bob do
  @spec hey(charlist) :: charlist
  def hey(input) do
    cond do
      doesnt_say_anything?(input) ->
        "Fine. Be that way!"
      is_a_question?(input) ->
        "Sure."
      yelling?(input) ->
        "Whoa, chill out!"
      true ->
        "Whatever."
    end
  end

  @spec yelling?(charlist) :: boolean
  def yelling?(message) do
    lowercase_message = String.downcase(message) # Solves for sentences without letters
    message == String.upcase(message) && message != lowercase_message
  end

  @spec is_a_question?(charlist) :: boolean
  def is_a_question?(message) do
    String.ends_with?(message, "?")
  end

  @spec doesnt_say_anything?(charlist) :: boolean
  def doesnt_say_anything?(message) do
    String.trim(message) == ""
  end
end
