def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
 puts  "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first=deal_card
  second=deal_card
  display_card_total(first+second)
  first+second
end

def hit? (card_total)
  prompt_user
  answer=get_user_input
  if (answer == 'h')
    newCard=deal_card
    card_total+= newCard
  end
  if (answer != 'h' && answer != 's')
    invalid_command
    prompt_user
  end 
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total_cards=initial_round
  until (total_cards > 21)
  updated=hit?(total_cards)
  display_card_total(updated)
  total_cards=updated
  end
  end_game(total_cards)
end
    
