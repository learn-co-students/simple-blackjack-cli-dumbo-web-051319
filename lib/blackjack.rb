def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  number = rand(1..11)
  return number 
end

def display_card_total(card_total)
  puts phrase = "Your cards add up to #{card_total}"
end

def prompt_user
  puts phrase = "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts phrase = "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card = deal_card + deal_card
  display_card_total(card)
  card
end

def hit?(card_total)
  prompt_user
  
  case get_user_input
  when "s"
  return card_total
  
  when "h"
  return card_total += deal_card
  
  when others
    return invalid_command
  end
end	


def invalid_command
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
  total = hit?(total)
  display_card_total(total)
end
  end_game(total)

 end
    
