require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end


def deal_card
  # code #deal_card here
  randCard = rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  return card_total

end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  user_IN = gets.chomp
end

def end_game(card_total)
  # code #end_game here
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  r1 = deal_card()
  r2 = deal_card()
  sum = r1 + r2
  display_card_total(sum)
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

def hit?(card_total)
  prompt_user
  user = get_user_input
  if user == 'h'
    new_round = deal_card()
    card_total = card_total + new_round
    return card_total
  else if user == 's'
    return card_total
    prompt_user
  else
    invalid_command
    prompt_user

end
end
end

#####################################################
# get every test to pass before coding runner below #
####################################################

def runner
  welcome
  cardsTotal = initial_round

   while cardsTotal < 21
     binding.pry
    cardsTotal = hit?(cardsTotal)
    display_card_total(cardsTotal)

end
      end_game(cardsTotal)
end
