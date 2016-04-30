def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  return rand(1..11)
  # code #deal_card here
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game (card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  # code #initial_round here
  display_card_total(total)
  return total
end

def hit?(arg)
  prompt_user
  tmp = get_user_input
  if ( tmp == 'h' )
    arg = arg + deal_card
  elsif ( tmp == 's' )
  else
    invalid_command
  end
  return arg
  # code hit? here
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  tmp = initial_round
  tmp = hit?(tmp)
  display_card_total(tmp)
  if ( tmp > 21 )
    end_game(tmp)
  end
end

