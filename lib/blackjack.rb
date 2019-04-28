def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
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
  first_card = deal_card
  second_card = deal_card
  total = first_card + second_card
  display_card_total(total)
  return total
end

def hit?(num)
    prompt_user
    choice = get_user_input
    total = num
    if choice == "s"

    elsif choice == "h"
      total += deal_card
      # total += deal_card
    else
      invalid_command
    end
    return total
end

def invalid_command
  puts "Please enter a valid command"
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  num = initial_round
  total = hit?(num)
  display_card_total(total)
  new_total = 0
  until total > 21
    new_total = hit?(total)
    display_card_total(new_total)
    new_total += total
  end
    return end_game(total)
end
