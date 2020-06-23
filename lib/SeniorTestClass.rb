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

    def scaleSkills( skills )
        
        total_skills = 0

        if skills.length > 0 

            skills.each do | name, value |
                
                value = value.to_i
                if value >= 0 && value <= 5
                    total_skills += value
                end
            end

            case 
                when total_skills <= 7
                    return "Junior - Pontuação(#{total_skills} pontos)"
                when total_skills > 7 && total_skills <= 11
                    return "Pleno - Pontuação(#{total_skills} pontos)"
                else
                    return "Sênior - Pontuação(#{total_skills} pontos)"
            end

        end

    end
end