require_relative '../src/parser.rb'

describe "parser" do
    before do
        @parser = Parser.new('-l -p 8080 -d /usr/logs')
        @parser.input('-Q')
    end

    it "recognises invalid input" do

        expect(@parser.valid?).to be_false
    end
end
