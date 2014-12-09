if __FILE__ == $0 then
    $: << "."
end
require './lib/nodelist/list'
require './lib/exam/examen'
require './lib/question/simpleChoice/base'
require './lib/question/trueOrFalse/base'
require './lib/question/questionFather/base'
require './lib/quiz/quiz.rb'

class Interfaz
	def initialize
		@quiz = Quiz.new("Cuestionario de LPP 05/12/2014") {
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
	    
	def run
        	examen = @quiz.to_exam
        	while examen.next_question != nil do
            		STDOUT.flush
		        value = gets.chomp
          		examen.response_question(value)
        	end
        	examen.show_stats
    	end
end
if $0 == __FILE__ then
    interfaz = Interfaz.new()
    interfaz.run	
end
