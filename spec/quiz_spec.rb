require './lib/exam/examen'
require './lib/quiz/quiz.rb'
describe Quiz do
    before :each do
	@z = Quiz.new("Cuestionario de LPP 05/12/2014") {
	question '¿Cuantos argumentos de tipo bloque puede recibir un m´etodo?',
	right =>'1',
	wrong =>'2',
	wrong =>'muchos',
	wrong =>'los que defina el usuario'
	question "En Ruby los bloque son objetos que continen codigo",
	wrong =>'Cierto',
	right =>'Falso'
	}
    end
    describe "constructor" do
      it "constructor correcto" do
        expect(@z.title) == "Cuestionario de LPP 05/12/2014"
      end
      it "resultado" do
        expect(@z.to_exam) == "<Examen:0x8ee8f10>"
      end
    end
    describe "lista" do
	it "mostrar" do

	    expect(puts @z.list) ==" #<struct Node value=#<SimpleChoice:0x92b90f4 @text=\"¿Cuantos argumentos de tipo bloque puede recibir un m´etodo?\", @right=\"1\", @distractor=[\"2\", \"muchos\", \"los que defina el usuario\"], @dif=\"1\">, next=#<struct Node value=#<SimpleChoice:0x92b8f8c @text=\"En Ruby los bloque son objetos que continen codigo\", @right=\"Falso\", @distractor=[\"Cierto\"], @dif=\"1\">, next=nil, father=#<struct Node:...>>, father=nil>"

	end
    end
end
