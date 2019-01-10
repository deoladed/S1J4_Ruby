# Je crois que ca se passe de commentaires, enfin j'espere


def say_hello(first_name)
	puts "Saluuuuuuuut #{first_name}"
end

def ask_name
	puts "Donne moi ton nom petit con"
	first_name=gets.chomp
end

say_hello(ask_name)
