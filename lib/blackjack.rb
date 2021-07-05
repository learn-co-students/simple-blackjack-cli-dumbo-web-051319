def welcome
  puts "Welcome to the Blackjack Table"
  end

def deal_card
  rand(1..11)
end

def display_card_total(card_sum)
  puts "Your cards add up to #{card_sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp.strip
end

def end_game(card_sum)
  puts "Sorry, you hit #{card_sum}. Thanks for playing!"
end

def initial_round
   first_round = deal_card + deal_card
  display_card_total(first_round)
return first_round
end

def hit?(card_sum)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    card_sum += deal_card
  elsif user_input == "s"
    card_sum
  else
    invalid_command
  end
end

def invalid_command
  puts "Sorry, not a valid command"
get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

  def runner
  welcome
  card_sum = initial_round
  until card_sum > 21
    card_total = hit?(card_sum)
    display_card_total(card_sum)
  end
  end_game(card_sum)
end
end
    
