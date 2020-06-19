require_relative( 'lib/SeniorTestClass' )

verify_inputs = SeniorTest.new()

person_1 = SeniorTest.new()
person_1.scaleSkills({ ruby: 1, db: 1, agile: 0, pattern: 0 })

person_2 = SeniorTest.new()
person_2.scaleSkills({ ruby: 5, db: 3, agile: 1, pattern: 2 })

person_3 = SeniorTest.new()
person_3.scaleSkills({ ruby: 5, db: 4, agile: 3, pattern: 2, server: 2 })

print "Nível Ruby de 0 até 5: "
ruby = gets.chomp.to_i
verify_inputs.verify(ruby)

print "Nível Db de 0 até 5: "
db = gets.chomp.to_i
verify_inputs.verify(db)

print "Nível Agile de 0 até 5: "
agile = gets.chomp.to_i
verify_inputs.verify(agile)

print "Nível Pattern de 0 até 5: "
pattern = gets.chomp.to_i
verify_inputs.verify(pattern)

print "Nível Server de 0 até 5: "
server = gets.chomp.to_i
verify_inputs.verify(server)

print SeniorTest.new().scaleSkills({ ruby: ruby, db: db, agile: agile, pattern: pattern, server: server })