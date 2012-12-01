class GameController < ApplicationController

# player hands

	
	def new
		#Game.new?
	end
	


	def create

		#creation of game and adding games to the user
		@game = Game.new
		user = User.find(@auth.id)
		user.games << @game


		#PUT THIS IN A MODEL, MAYBE DEALER MODEL

		#creation and prep for the deck
		deck = DeckofCards.new
		deck.shuffle
		deck.cut

		#creation of the user hand
		user.hand = []	

		for each user do |user|

			2.times do

		@user.hand << deck.draw
	
				end

		#define the hand valye
		@user.hand_value = @user.hand[0].value + @user.hand[1].value 

		#evaluation of the hands with aces and treatment
		if user.hand[0].rank == "ace" && user.hand_value > 21
			user.hand[0].value = 1
		
		else
		user.hand[0].value = @user.ace_choice

		if user.hand[1].rank == "ace" && user.hand_value > 21
			user.hand[1].value = 1
		
		else
		user.hand[1].value = @user.ace_choice
		#default for ace_choice should be nil
		#ask the user if they want it to be 11 or 1
		
		end
			
		#evaluation of the hand for bust
		while user.hand_value < 21 do
			if user.hit_stay = "hit"
				@user.hand << deck.draw
			else
				user.hand_value = 				
		 
		 user.hand_value > 21
			user.hand_value = 0
		e

		#ask the user to "hit" or "stay"
		#show the user.hand_value
		#ask hit or stay
		

			
		end
			
		end

	end

	def index
	end



	end



end

