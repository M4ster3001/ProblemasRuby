require '../lib/SeniorTestClass'

describe SeniorTest do

    subject(:seniorTest) { described_class.new() }

    context '#verify' do
        it 'Verificando o método verify' do

            teste = seniorTest.verify( 4 )
            expect(teste).to eq( 'valido' )
        end

        it 'Verificando o verify com string' do

            expect{seniorTest.verify( 'teste' )}.to raise_error SystemExit
        end

        it 'Verificando o método verify passando do 5' do

            teste = seniorTest.verify( 6 )
            expect(teste).not_to eq( 'valido' )
        end
    end
end