class Quiz
	attr_accessor :title, :text, :right, :distractor
	def initialize (title, &block)		
		@title = title
		@distractor = []
		instance_eval &block
	end

	def question(text,answers ={})
		@text = text
		@right = answers[:right] if answers[:right] 
		@distractor << answers[:distractor] if answers[:distractor]
		
	end

	def right
		:right
	end

	def wrong
		:distractor
	end
	def to_s
		puts @title
		puts @text
		
	end	

end

if $0 == __FILE__ then

	quiz = Quiz.new("Cuestionario de LPP 05/12/2014") {
	question '¿Cuantos argumentos de tipo bloque puede recibir un metodo?',
	right =>'1',
	wrong =>'2',
	wrong =>'muchos',
	wrong =>'los que defina el usuario'

	question "En Ruby los bloque son objetos que continen codigo",
	wrong =>'Cierto',
	right =>'Falso'
	}
	puts quiz

end
