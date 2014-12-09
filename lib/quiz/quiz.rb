if __FILE__ == $0 then
    $: << "."
end
require './lib/nodelist/list'
require './lib/exam/examen'
require './lib/question/simpleChoice/base'
require './lib/question/trueOrFalse/base'
require './lib/question/questionFather/base'

class Quiz
	attr_accessor :list, :title
	def initialize (title, &block)
		
		@list = Lista.new()
		@i = 0		
		@title = title		
		@distractor = []
		instance_eval &block
	end

	def question(text,answers={})		
		@text = text
		@right = answers[:right] if answers[:right]
		answers.map do |key,value|
			@distractor << value if key != :right
		end
		@list.add(SimpleChoice.new(:text => @text,:right => @right,:distractor => @distractor,:dif => '1'))
		@distractor = []

	end

	def right
		:right
	end

	def wrong
		@i = @i + 1	
		("distractor"+@i.to_s).intern	
	end
	def to_exam
		Examen.new(@list)
	end
	
end

if __FILE__ == $0 then
	quiz = Quiz.new("Cuestionario de LPP 05/12/2014") {
	question '¿Cuantos argumentos de tipo bloque puede recibir un m´etodo?',
	right =>'1',
	wrong =>'2',
	wrong =>'muchos',
	wrong =>'los que defina el usuario'
	question "En Ruby los bloque son objetos que continen codigo",
	wrong =>'Cierto',
	right =>'Falso'
	}
	puts quiz.list	
end
