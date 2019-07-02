def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  
end
def get_user_input
  answer = gets.chomp
  answer
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit?(number)
  prompt_user
  answer = get_user_input
  if answer =='s'
    number
  elsif answer == 'h'
   number += deal_card

    number
  else
    invalid_command
  end

end


def invalid_command
 puts "Please enter a valid command"
 prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  
  until total > 21 
    total= hit?(total)
    display_card_total(total)
  end
  
  end_game(total)
    
end
    
