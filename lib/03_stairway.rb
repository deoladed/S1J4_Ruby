# def des
# 	result = rand(1 .. 6)
# 	puts "Ton jet de des est egal a #{result}"
# 	return result
# end

# def position(result)
# 	h = 0
	
# case result
# 	when 5
# 		etage += 1
# 	puts "Vous avancez d'une marche"
# 	puts "Vous etes a l'etage #{h}"
# 	else puts "You loose" 
# 	end
# end

# position(des)


def jeu
	puts "Bonjour, bienvenue, ce super jeu, tu dois arriver au 10 eme etage"
	puts "Si tu fais un 5 ou un 6, tu montes d'un etage"
	puts "Par contre si tu fais un 1, tu redescends d'un etage"
	puts "3, 4, 5, rien ne se passe"

		h = 0
		count = 0

		while h < 10
			count += 1
			result = rand(1 .. 6)
			puts "Ton jet de des est egal a #{result}"

			if result == 5 || result == 6
				h += 1
				puts "Vous avancez d'une marche"
				puts "Vous etes a l'etage #{h}" 

			elsif result == 1
				h -= 1
				puts "Vous descendez d'une marche"
				puts "Vous etes a l'etage #{h}"

			else 
				puts "Rien ne se passe, vous etes toujours a l'etage #{h}" 
			end	
		end 
	 	puts "Bravooooooo, t'es arrive champion!! Ca va les jambes? #{count} tour ca en fait des lancers de des!"
	
	return count
end

def average_finish_time
	totaltours = 0

	100.times do
		totaltours += jeu
	end

	puts "Sur 100 parties, nombre moyen de tour par partie = #{totaltours/100}"
end

def tuveuxjouer
puts "Pret a jouer ? (oui/non)"
	i = gets.chomp
	if i == "oui"
		jeu
	else puts "Tant pis"
	end
end


def perform
	tuveuxjouer
	average_finish_time
end

perform