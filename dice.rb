require "sinatra"
require "better_errors"
require "binding_of_caller"

# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do
  erb(:home)
end

# DICE 2 ROLLS 6 SIDES
get("/dice/2/6") do
  @rolls = []

  2.times do
    die = rand(1..6)

    @rolls.push(die)
  end

  erb(:two_six)
end

# DICE 2 ROLL 10 SIDES
get("/dice/2/10") do
    @rolls = []

    2.times do
      die = rand(1..10)

      @rolls.push(die)
    end
  
    erb(:two_ten)
end

# DICE 1 ROLL 20 SIDES
get("/dice/1/20") do
  @rolls = []

  1.times do
    die = rand(1..20)

    @rolls.push(die)
  end

  erb(:one_twenty)
end

# DICE 5 ROLLS 4 SIDES
get("/dice/5/4") do
  first_die = rand(1..4)
  second_die = rand(1..4)
  third_die = rand(1..4)
  fourth_die = rand(1..4)
  fifth_die = rand(1..4)

  sum = first_die + second_die + third_die + fourth_die + fifth_die

  @outcome = "You rolled a #{first_die}, a #{second_die}, a #{third_die}, a #{fourth_die}, and a #{fifth_die} for a total sum of #{sum}."

  erb(:five_four)
end
