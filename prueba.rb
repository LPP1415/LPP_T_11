class Quiz
	attr_accessor :title, :text, :right, :distractor
	def initialize (title, &block)		
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

	end

	def right
		:right
	end

	def wrong
		@i = @i + 1	
		("distractor"+@i.to_s).intern	
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

	
	}
	#puts quiz

end
