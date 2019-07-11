def ask_first_name
	puts"Entrez votre nom"
	p=gets.chomp
	return p
end	

def say_hello
	puts" Bonjour #{ask_first_name}"

end
	say_hello