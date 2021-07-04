def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(sum)
  puts "Your cards add up to #{sum}" 
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(current_card_total)
  prompt_user
  input = get_user_input
    if input == "h"
      current_card_total += deal_card
    elsif input == "s"
      current_card_total
    else
      invalid_command
    end
    return current_card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until sum > 21 
    sum = hit?(sum)
  end
  end_game(sum)
  puts "Your cards add up to #{sum}"
end

    
