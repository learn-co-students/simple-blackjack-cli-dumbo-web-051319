def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"

end

def deal_card
  # code #deal_card here
  rand(1...11)
end

def display_card_total(card_total)
  # code #display_card_total here
  card_total > 7
  puts "Your cards add up to #{card_total}"

end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  value = gets.chomp
  return value
end

def end_game(card_total)
  # code #end_game here
  puts  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(currentcard_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 'h'
     currentcard_total += deal_card
  elsif input == 's'
     currentcard_total
  else
    invalid_command

  end
  return currentcard_total


=begin prompt_user
  case get_user_input
  when "s"
    currentcard_total
  when "h"
    currentcard_total += deal_card
  when others
    invalid_command
  end
=end
end





def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here

  welcome
  sum = initial_round
  until sum > 21 do
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
