def asknumber
	puts "Oh grand pharaon, combien d'etages a ta pyramide ?"
	h = gets.chomp.to_i
	return h
end

def full_pyramid(h)
	h.times do |i|
		print ' ' * (h - i)
		puts "#" * (i * 2 + 1)
	end
end


def full_pyramidreverse(h)

	h.times do |i|
		print ' ' * (i) 
		puts "#" * ((h * 2 + 1) - (2 * i))

		if ((h * 2 + 1) - (2 * i)) == 3
		puts  ' ' * (i+1) + "#"
		end
	end
end



def wtf_pyramid(h)
	puts "Voici la pyramide ma gueule :"
full_pyramid(h)
full_pyramidreverse(h)
end

wtf_pyramid(asknumber)
