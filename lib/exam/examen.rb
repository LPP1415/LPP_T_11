require './nodelist/list'
require './question/simpleChoice/base'
require './question/trueOrFalse/base'
require './question/questionFather/base'

class Examen
	@@q1 = SimpleChoice.new(:text => '2 + 2 = ',:right => '4',:distractor => [5,3,2], :dif =>1)
	@@q2 = SimpleChoice.new(:text => '2 * 2 = ',:right => '4',:distractor => [5,3,2], :dif =>2)
	@@q3 = SimpleChoice.new(:text => '3 + 2 = ',:right => '5',:distractor => [6,3,2], :dif =>3)
	@@q4 = SimpleChoice.new(:text => '2 - 1 = ',:right => '1',:distractor => [0,3,2], :dif =>4)
	@@q5 = SimpleChoice.new(:text => '2 - 2 = ',:right => '0',:distractor => [4,3,2], :dif =>5)
	@@q6 = TrueOrFalse.new(:text => '2 + 2 = 4',:right => 'true', :dif =>6)
	@@q7 = TrueOrFalse.new(:text => '2 * 2 = 4',:right => 'true', :dif =>7)
	@@q8 = TrueOrFalse.new(:text => '3 + 2 = 6',:right => 'false', :dif =>8)
	@@q9 = TrueOrFalse.new(:text => '2 - 2 = 1',:right => 'false', :dif =>9)
	@@q10 = TrueOrFalse.new(:text => '2 - 1 = 1',:right => 'true', :dif =>10)

	@@list = Lista.new()
	@@list.add(@@q1,@@q2,@@q3,@@q4,@@q5,@@q6,@@q7,@@q8,@@q9,@@q10)
	@@evaluacion = Array.new()
	@@n = 1
	@@aciertos = 0
	@@fallos = 0

	@@list.each do |q|
		print "#{@@n})"		 
		puts q.to_s
		print "Respuesta: "
		STDOUT.flush
		res = gets.chomp
		if res == q.right then
			@@evaluacion.push("La pregunta #{@@n} es correcta")
			@@aciertos = @@aciertos + 1
		else
			@@evaluacion.push("La pregunta #{@@n} es incorrecta")
			@@fallos = @@fallos + 1
		end
		@@n = @@n + 1
	end
	puts "-----------------EVALUACION------------------------"
	puts "Fallos : #{@@fallos}, Aciertos: #{@@aciertos}"
	@@evaluacion.each {|x| puts x}
	puts "---------------------------------------------------"
end
