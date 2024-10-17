require "sinatra"
require "better_errors"
require "binding_of_caller"

# DICE 2 ROLLS 6 SIDES
get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end

# DICE 2 ROLL 10 SIDES
get("/dice/2/10") do
  die_one = rand(1..10)
  die_two = rand(1..10)
  sum = die_one + die_two

  outcome = "You rolled a #{die_one} and a #{die_two} for a total sum of #{sum}."

  "<h1>2d10</h1>
  <p>#{outcome}</p>"
end

# DICE 1 ROLL 20 SIDES
get("/dice/1/20") do
  die = rand(1..20)

  outcome = "You rolled a #{die}."

  "<h1>1d20</h1>
  <p>#{outcome}</p>"
end

# DICE 5 ROLLS 4 SIDES
get("/dice/5/4") do
  first_die = rand(1..4)
  second_die = rand(1..4)
  third_die = rand(1..4)
  fourth_die = rand(1..4)
  fifth_die = rand(1..4)

  sum = first_die + second_die + third_die + fourth_die + fifth_die

  outcome = "You rolled a #{first_die}, a #{second_die}, a #{third_die}, a #{fourth_die}, and a #{fifth_die} for a total sum of #{sum}."

  "<h1>5d4</h1>
  <p>#{outcome}</p>"
end
