require '../lib/SeniorTestClass'

describe SeniorTest do

    subject(:seniorTest) { described_class.new() }

    context '#verify' do

        it 'Verificando o método verify' do

            teste = seniorTest.verify( 4 )
            expect(teste).to eq( 'valido' )
        end

        it 'Verificando o verify com string' do

            expect{seniorTest.verify( 'teste' )}.to raise_error(SystemExit, "Somente números")
        end

        it 'Verificando o método verify passando do 5' do

            expect{seniorTest.verify( 6 )}.to raise_error(SystemExit, /não é válido/)
        end
    end

    context '#scaleSkills' do

        it "Testando a pontuação" do

            teste = seniorTest.scaleSkills({ ruby: 2, db: 3, agile: 2, pattern: 1, server: 2 })
            expect(teste).to eq("Pleno - Pontuação(10 pontos)")

            #expect do
            #    seniorTest.scaleSkills({ ruby: 2, db: 3, agile: 2, pattern: 1, server: 2 })
            #end.to output("Pleno - Pontuação(10 pontos)\n").to_stdout
        end

        it "Testando a pontuação com uma string" do

            teste = seniorTest.scaleSkills({ ruby: 'teste', db: 3, agile: 2, pattern: 1, server: 2 })
            expect(teste).to eq("Pleno - Pontuação(8 pontos)")

            #expect do
                #considera a string como 0
            #    seniorTest.scaleSkills({ ruby: 'teste', db: 3, agile: 2, pattern: 1, server: 2 })
            #end.to output("Pleno - Pontuação(8 pontos)\n").to_stdout
        end
    end
    
end