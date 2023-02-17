class GamesController < ApplicationController

  def new
    # grid
    grid
  end

  def score
    # raise
    # @user_input = params[:user_input]

    # Do all the tests before giving final score

    # check_user_input_valid(@user_input, @grid)
    # grid
    # Test if word is valid and if it's an english word
    # if pass both tests, calculate the score
    # @score = 0
  end

  private

  def grid
    @grid = []
    # Start with an empty array of grid and letters
    letters = ('a'..'z').to_a
    # Select 10 of letters randomly, and then insert into grid
    @grid << letters.sample(10)
    # returns an array within an array
    @grid.flatten!
  end

  # Two checks we need to do:
  # a) check if the user_input is only using letters from the grid
  def check_user_input_valid(user_input, grid)
    # user_input.chars.all? { |letter| grid.include?(letter) }
    # @result = "#{user_input}, #{grid}"
    puts "#{user_input} - #{grid}"
    puts 'check user input valid method running'
  end


  # if (word is valid)
  #   if (word is english) - STEP B
  #     return (compute score)
  #   else
  #     return (this is not an english word)
  #   end
  # else (word is invalid)
  #   return (word is not valid - not using grid letters)
  # end


  # b) check with API if the word is a real word
end
