require 'spec_helper.rb'

describe MethodSource::Expressions::ExpressionCollection do
  let(:blk) do
    Proc.new do
      puts "something"
      Proc.new  do
        puts "otherthing"
      end
    end
  end

  describe "expressions_at_nesting" do
    it "first item is" do
      expect(blk.expressions.first.source).to eql("puts \"something\"")
    end

    it "last item is" do
      expected_value ="Proc.new  do\n        puts \"otherthing\"\n      end"
      expect(blk.expressions.last.source).to eql(expected_value)
    end

    it "can be used on its returned items" do
      last_item = blk.expressions.last
      expect(last_item.expressions.first.source).to eql('puts "otherthing"')
    end
  end
end
