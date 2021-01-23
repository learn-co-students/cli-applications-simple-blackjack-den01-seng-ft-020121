require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets
  input
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_1 = deal_card
  card_2 = deal_card
  card_total = card_1 + card_2
  display_card_total(card_total)
  card_total
end


def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

def hit?(current_total)
  # code hit? here
  i = 0 
  while i == 0 do
    prompt_user
    input = get_user_input
    if input == "h"
      new_card = deal_card
      total = new_card + current_total
      i = 1
    elsif input == "s"
      total = current_total
      i = 1
    else
      invalid_command()
    end
  end
  total
end




#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome 
  current_total = initial_round
  x = 0 
  while x == 0 do
    new_total = hit?(current_total)
    if new_total == current_total
      new total = hit?(current_total)
      if new_total == current_total
        x = 1
      end
    else
      display_card_total(new_total)
    end
    if new_total > 21
      end_game(new_total)
      x = 1
    end
  end  
  
end
    
