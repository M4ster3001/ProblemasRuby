require_relative( 'FraseClass' )
frase = Frase.new

print "Inseri a frase "
input = gets.chomp.to_s

print frase.count(input), "\n"
    