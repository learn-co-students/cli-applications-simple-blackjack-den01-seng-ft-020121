require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 card = rand(1..11)
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
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end



def hit?(num)
 
  prompt_user
  case get_user_input
  when 's'
    num
  when 'h'
    num += deal_card
  else 
    invalid_command
    hit?(num)
  end
  num
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  total = 0
  welcome
  total = initial_round
  until total > 21
    hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
