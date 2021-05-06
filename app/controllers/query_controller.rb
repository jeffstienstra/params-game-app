class QueryController < ApplicationController
  def query_params #this comes from routes file
    user_name = params["name"]
    first_initial = user_name[0]
    if user_name[0] == "A" || "a"
      render json: { Alert: "Your name starts with '#{first_initial}', the first letter of the alphabet!" }
    else
      render json: { message: "Your name is #{user_name}, which starts with #{first_initial}." }
    end
  end

  def guessing_game #gets its data from the URL SEGMENT 'the_users_guess', which is the user's input
    guess = params["the_users_number"].to_i
    number = 25
    if guess > number
      render json: { message: "Your guess is too high..." }
    elsif guess < number
      render json: { message: "Your guess is too low..." }
    elsif guess == number
      render json: { message: "You are correct!!" }
    end
  end
end
