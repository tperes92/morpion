require_relative 'player'
require_relative 'board'
# cette classe s'occupe de gérer toute la partie. À l'initialisation elle crée 2 instances de Player, et 1 instance de Board.

class Game

	def initialize
		puts "Joueur 1 :"
		@player1=Player.new
		
		puts "Joueur 2 :"
		if @player1.symbol == "X"
			@player2=Player.new(nil, "O")
		else
			@player2 = Player.new(nil, "X")
		end
		@board=Board.new
	end

	def start
		puts "#{@player1.name} commence : "
		sleep 2
		turn
	end

	def turn
		tab = [["1", "2", "3"],["4", "5", "6"],["7", "8", "9"]]
		puts "ci-dessous la numérotation : "
			tab.each do |x|
	        puts "\t\t\t --- --- ---"
	        puts "\t\t\t| "+x[0].to_s+" | "+x[1]+" | "+x[2]+" |"
	        end
      		puts "\t\t\t --- --- ---"
     	sleep 2

     	

     	boucle = true
     	var_intermediaire = 0
     	nbr_tour = 1
     	while boucle
     		sleep 2
     		
     		if nbr_tour %2 ==0
     			puts "#{@player2.name}, où voulez-vous placer votre symbole ? (case entre 1 et 9) "
     		else
     			puts "#{@player1.name}, où voulez-vous placer votre symbole ? (case entre 1 et 9) "
     		end 
     		var_intermediaire = gets.chomp.to_i
     		while (var_intermediaire < 1) || (9 < var_intermediaire)
     			puts "Erreur, mauvais endroit, réessayer !"
     			var_intermediaire = gets.chomp.to_i
     		end

     		#le joueur place son symbole
     		if nbr_tour %2==0
     			playing = @board.play(@player2.symbol, var_intermediaire)
     		else
     			playing = @board.play(@player1.symbol, var_intermediaire)
     		end
        	
        	#On check si un joueur a placé dans un placement non-vide
	        while playing == false
	          var_intermediaire = gets.chomp
	          var_intermediaire = var_intermediaire.to_i
	          if nbr_tour % 2 == 0
	            playing = @board.play(@joueur_2.symbol, var_intermediaire)
	          else
	            playing = @board.play(@joueur_1.symbol, var_intermediaire)
	          end
	        end
	        
	        #on affiche le board à chaque tour
	        @board.to_s
	        
	        # quand qq gagne
	        if @board.victory? == true
	        	if nbr_tour %2 ==0
	        		puts "#{@player2.name} a gagné !"
	        	else
	        		puts "#{@player1.name} a gagné !"
	        	end
	        end    
	       	#on affiche le vainqueur si victoire
	       	
	        break if @board.victory? == true
	        # incrémentation du nombre de tour
	        nbr_tour +=1
	        if nbr_tour ==10
	        	puts "Match nul"
	        	nbr_tour=1
	        	#on réaffiche un nouveau tableau
	        	@board.array_mooves = tab
	        	@board.to_s
	        end
	    end
	end
end
