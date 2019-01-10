# Bienvenue dans notre jeu, ca commence avec un peu de blabla

def jeu
	puts "Bonjour, bienvenue, ce super jeu, tu dois arriver au 10 eme etage"
	puts "Si tu fais un 5 ou un 6, tu montes d'un etage"
	puts "Par contre si tu fais un 1, tu redescends d'un etage"
	puts "3, 4, 5, rien ne se passe"
# On defini h qui correspond a la position, et count qui va compter le nombre de tour de while pour la suite de l'exercices
		h = 0
		count = 0

#Tant que h n'a pas atteint le 10ene etage, on continue et on applique le regles
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
# Si h n'est plus inferieur a 10 :
	 	puts "Bravooooooo, t'es arrive champion!! Ca va les jambes? #{count} tour ca en fait des lancers de des!"
# LE jeu renvoie le noombre de lancer de des, count
	return count
end

#On va compteur les tour
def average_finish_time
	totaltours = 0
# On part de 0, et on lancer 100 fois le jeu et on ajoute le resultat de count retourne par jeu a totaltour
	100.times do
		totaltours += jeu
	end
# Puis on le puts divise par 100 pour faire la moyenne
	puts "Sur 100 parties, nombre moyen de tour par partie = #{totaltours/100}"
end

# Comme on a encore un peu de temps et quon est fun, on va quand meme creer la fonction
# # qui te demande si tu veux jouer, au cas ou...
def tuveuxjouer
puts "Pret a jouer ? (oui/non)"
	reponse = gets.chomp
	if reponse == "oui"
		reponse = true
	else 
		puts "Tant pis"
		reponse = false
	end
	return reponse
end


def perform
#perfrom va lancer tuveuxjouer, si la reponse est non, il retourne false puis break le jeu grace a return
	if tuveuxjouer == false
		puts "Au revoir"
		return
	end
# SI la reponse etait oui, on lancer le compteur de tour qui va lancer 100 fois le jeu
	average_finish_time
end

# Merci de nous avoir lus!!!!!!
perform