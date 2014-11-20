# encoding UTF-8
if __FILE__ == $0 then
  $: << "."
end
require "question/questionFather/base"
	class TrueOrFalse < QuestionFather
		def initialize(args)
			super
		end
		def to_s
			"Responde \"true\" or \"false\" la siguiente pregunta #{@text} \n-True \n-False \n"
		end
	end


if __FILE__ == $0 then
	qq = Question::TrueOrFalse.new({:text=>'2+2=4',:right=>'true',:dif => 5})
  q1 = Question::TrueOrFalse.new({:text=>'Capital de espanya es madrid',:right=>'true',:dif => 5})
  puts qq.to_s
  puts "***"
  puts qq <=> q1
end
