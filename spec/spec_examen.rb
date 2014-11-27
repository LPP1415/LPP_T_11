require './lib/exam/examen'
require './lib/question/simpleChoice/base'
require './lib/nodelist/list'
describe Examen do
    before :each do
        @p1 = SimpleChoice.new(:text => '1)2 + 2 = ',:right => '1',:distractor => [5,3,2], :dif =>1)
        @p2 = SimpleChoice.new(:text => '2)5 + 2 = ',:right => '2',:distractor => [5,3,2], :dif =>1)
        @p3 = SimpleChoice.new(:text => '3)2 * 2 = ',:right => '3',:distractor => [5,3,2], :dif =>1)

        @list = Lista.new()
        @list.add(@p1,@p2,@p3)
        @examen = Examen.new(@list)

    
    end
    describe "constructor" do
      it "constructor correcto" do
        expect(@examen.list) == @list
        expect(@examen.next_question) == '1)2 + 2 = '
        expect(@examen.reverse_question) == nil
        expect(@examen.next_question) == '2)5 + 2 = ' 
        expect(@examen.next_question) == '1)2 + 2 = '
        #expect(@ex.list) == @list
      end
    end
end
