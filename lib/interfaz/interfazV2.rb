if __FILE__ == $0 then
    $: << "."
end
require './lib/nodelist/list'
require './lib/exam/examen'
require './lib/question/simpleChoice/base'
require './lib/question/trueOrFalse/base'
require './lib/question/questionFather/base'

class Interfaz
    attr_accessor :list
    
def run
        examen = quiz.to_exam
        while examen.next_question != nil do
            STDOUT.flush
            value = gets.chomp
            examen.response_question(value)
        end
        examen.show_stats
    end
end
if __FILE__ == $0 then
    interfaz = Interfaz.new(nil)
    interfaz.run
end
