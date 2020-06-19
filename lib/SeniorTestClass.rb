class SeniorTest

    def verify(number)
        
        if number.is_a? Integer
            if number >= 0 && number <= 5
                return "valido"
            else
                abort "A pontuação aceita é de 0 até 5, #{number} não é válido "
            end
        else
            abort "Somente números"
        end
    end

    def compareSkills( skills )
        
        total_skills = 0

        skills.each do | name, value |
            
            if value >= 0 && value <= 5
                total_skills += value
            end
        end

        case 
            when total_skills <= 7
                puts "Junior - Pontuação(#{total_skills} pontos) "
            when total_skills > 7 && total_skills <= 11
                puts "Pleno - Pontuação(#{total_skills} pontos) "
            else
                puts "Sênior - Pontuação(#{total_skills} pontos) "
        end

    end
end