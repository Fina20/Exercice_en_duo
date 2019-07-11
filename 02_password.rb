def signUp
	puts "Veuillez entrer un MOT DE PASSE : "
	print "> "
	password = gets.chomp
	return password
end

def login (password)
	answer = ""
	while answer != password do
	if answer != ""
		puts "Mauvais mot de passe !"
	end
	puts "ATTENTION - ZONE SECRETE - ENTREZ VOTRE MOT DE PASSE :"
	print "> "
	answer = gets.chomp

	end
end

def welcome_screen
	print "Ok, accès autorisés"

end

def perform

	password = signUp
	login (password)
	welcome_screen

end

perform