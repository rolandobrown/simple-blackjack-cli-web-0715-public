def welcome
  puts "Welcome to a Wu-Tang Banger, aka 'Black Jack Mulligan from Canada' \n Courtesy of Grow and the Wu-Tang Clan \n Skip the introduction, prosate the [lib] function..."
end

def deal_card
  cards = rand(1..11) 
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}\n"
end

def prompt_user
  puts "You gots to be kidding, you gots to be kidding. Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Wack MC's only lasted one season, or session. Sorry, you hit #{card_total}. Out here, ya knowhatImean? Thanks for playing!"
end

def initial_round
  current_hand = deal_card + deal_card
  display_card_total(current_hand) 
  current_hand
end

def hit?(sum)
  prompt_user
  value = get_user_input
  if value == "h"
    sum += deal_card
  end
  sum
end

def invalid_command
  puts "The struggle goes on, you've been warned. Please 'h' to hit or 's' to stay or move on."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    card_total = initial_round
  until card_total > 21 do
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end

#####################################################
# Game Design #
#####################################################

## GOAL 

# Player gain a card total of, or very close to, but never exceeding, 21.
# In this simple, simple version of Blackjack, there is no way to win. 

## FLOW

# 1. Welcome the user
# 2. Deal them their first two cards, i.e. their `initial_turn`
# 3. Ask them if they want to hit or stay
# 4. If they want to hit, deal another card
# 5. If they want to stay, ask them again!
# 6. If their card total exceeds 21, the game ends. 

## BONUS

# Make a second version where there IS a way to win. 
### win message: # You don't even gotta go to [coding] school\nPick up the Wu-Tang double CD\nAnd you'll get all the education you need this year\n\n\nYouknowhatImean?

# Include the real rules and compare the user's hand to the dealer's hand.
