def mdp
	puts "Bonjour, quel est ton mot de pass jeune padawan ?"
pass = gets.chomp
	puts "Ton mdp est #{pass}, ne l'oublie pas mouhahaha"
	pass
end

def login
	puts "Quel est ton mot de passe ?"
reponse = gets.chomp
	reponse
end

def welcome_screen(pass, reponse)
	if reponse == pass
	puts "Bienvenue a la NSA"
	puts "Voici tous les secrets de Thomas et Julien :"
	puts "Thomas a des relations avec des epees"
	puts "Julien deteste la musique"
	puts "bblablabalbalabalbala"
	puts "The Hacking Project, c'est dur, et ca, c'est pas un secret"
	else
		puts "Loupe mon vieux"
	end
end

def perform
 pass = mdp
 reponse = login
 welcome_screen(pass, reponse)
end

perform