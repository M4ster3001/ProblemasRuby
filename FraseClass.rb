class Frase 

    def count(input)

        vowels = { 
            "a"=> 0, 
            "e"=> 0, 
            "i"=> 0, 
            "o"=> 0, 
            "u"=> 0 
        }

        count = 0

        input = input.downcase

        while count < input.length do

            if( input[count] == "a" || input[count] == "e" || input[count] == "i" || input[count] == "o" || input[count] == "u" )
                vowels.each do | letter, qtde |

                    if letter == input[count]
                        vowels[letter] += 1
                    end
                end

            end

            count += 1
        end

        return [vowels], "\n"

    end
end