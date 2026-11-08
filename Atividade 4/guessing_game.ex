defmodule GuessingGame do
  def compare(secret_number, guess) when secret_number == guess do
    # Please implement the compare/2 function
    "Correct"
  end

  def compare(secret_number, guess) when guess == :no_guess do
    "Make a guess"
  end

  def compare(secret_number) do
    "Make a guess"
  end
  
  def compare(secret_number, guess) when secret_number - guess == 1 or guess - secret_number == 1 do
    "So close"
  end

  def compare(secret_number, guess) when secret_number < guess do
    "Too high"
  end
  
  def compare(secret_number, guess) when secret_number > guess do
    "Too low"
  end

  
  
end
