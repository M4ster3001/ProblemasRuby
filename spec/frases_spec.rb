require '../lib/FraseClass'

describe Frase do

    subject(:vowels) { described_class.new() }

    context "#count" do
        it 'Testando a frase' do

            teste = vowels.count('O cachorro uiva faz auuuuu para a lua')
            expect(teste).to eq( [{"a"=>8, "e"=>0, "i"=>1, "o"=>3, "u"=>7}] )

        end
        it 'Tentando gerar falha' do

            teste = vowels.count('$123atu% as $$@!#-)0!% tu do $0)')
            expect(teste).to eq( [{"a"=>2, "e"=>0, "i"=>0, "o"=>1, "u"=>2}] )

        end
    end
end