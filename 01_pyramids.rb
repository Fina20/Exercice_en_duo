def pyramid

puts "Combien d'étages veux-tu ?"
print "> "
user_number = gets.to_i
ary = Array.new
i = 0
j = user_number

print "Voici la pyramide :"

user_number.times do

  i += 1
  j -= 1

    str = (" " * j)+("#" * i) + ("#" * i)

  ary.insert(i, str)

end

return ary

end



def full_pyramid

    pyramid.each { |a| puts a }

end

def wtf_pyramid
    ary2 = Array.new
    ary2 = pyramid
    ary2.each { |a| puts a }
    ary2.reverse!
    ary2.each { |a| puts a }

end

def pyramid_choice
    puts "Choisis '1' pour une pyramide classique ou '2' pour une pyramide WTF !!!"
    user_answer = gets.to_i
    if user_answer == 1
        full_pyramid
    else 
        wtf_pyramid
    end
end

pyramid_choice