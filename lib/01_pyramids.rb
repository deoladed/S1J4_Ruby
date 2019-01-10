# On demande un nonbre qu'on enregistre dans h

def asknumber
	puts "Oh grand pharaon, combien d'etages a ta pyramide ?"
	h = gets.chomp.to_i
	return h
end

# On creer la pyramide du haut

def full_pyramid(h)
	h.times do |i|
		print ' ' * (h - i)
		puts "#" * (i * 2 + 1)
	end
end

#Puis celle du bas

def full_pyramidreverse(h)
	h.times do |i|
		print ' ' * (i) 
		puts "#" * ((h * 2 + 1) - (2 * i))

#Il manque un # en bas de la pyramide, alors on le rajoute comme ca : (c'est mieux que rien)
		if ((h * 2 + 1) - (2 * i)) == 3
		puts  ' ' * (i+1) + "#"
		end
	end
end


# NN : pour les pointilleux, notre perform s'appelle wtf_pyramid

def wtf_pyramid(h)
	puts "Voici la pyramide ma gueule :"
	full_pyramid(h)
	full_pyramidreverse(h)
end

wtf_pyramid(asknumber)
