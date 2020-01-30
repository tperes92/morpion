#ce sont les joueurs. Il doit y avoir 2 instances de cette classe lors d'une partie

class Player
attr_accessor :name, :symbol

	def initialize(name=nil, symbol=nil)
		if name == nil
			puts "Enter your name :"
			name = gets.chomp
		end
		@name = name

		if symbol == nil
			puts "Choose a symbol : X or O "
			choice = gets.chomp
			while choice !="X" && choice != "0"
			puts " Try again "
			choice = gets.chomp
			end
			symbol = choice
		end
		@symbol = symbol

	end

end
