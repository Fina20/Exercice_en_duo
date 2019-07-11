puts "Bonjour et bienvenue dans le jeu d'éscalier !"
puts "Tu es prêt ?"
puts "3, 2, 1 ... GO!!!!!!!"
puts "Appuyez sur entreé pour continuer"
a = gets.chomp

def elevator
	stepNumber = 0
	tourNumber = 0

	while stepNumber < 10 do
		tourNumber += 1
		randomNumber = rand(1..6)

		case randomNumber
		when 1
			stepNumber -= 1
			if stepNumber < 0
				stepNumber = 0
            puts "Vous êtes tout en bas"
			else
			
			puts "Vous descendez d'une marche et êtes maintenant à la case: #{stepNumber}"
			end
		when 2..4
			puts "Vous ne bougez pas et êtes toujours à la case: #{stepNumber}"
		when 5..6
			stepNumber += 1
			puts "Vous montez une marche et êtes maintenant à la case: #{stepNumber}"
		end

	end

    puts "Vous êtes enfin sur la dernière marche !"

	return tourNumber
end

def average_finish_time
	totalFinishTime = 0
	for testNumber in 1..100
		totalFinishTime = totalFinishTime + elevator
	end
	puts "Moyenne sur 100 essais : #{totalFinishTime / 100}"
end
puts"Hehe, vous y êtes arrivés !"
puts"Appuyez sur entrée ou OK pour voir les résultats"
a = gets.chomp


average_finish_time