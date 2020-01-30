#Variables d'instance : une Boardcase est définie par sa position (A1, B2, B3, etc.) et son contenu (Soit elle est vide, soit elle a comme valeur le string "x", soit elle a comme valeur le string "o").


class BoardCase
	attr_accessor :symbol, :position


	def initialize (symbol, position)
		@symbol = symbol
		@position = position
	end

	def to_s
		@symbol.to_s
	end

end

