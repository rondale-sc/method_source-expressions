require "spec_helper"

describe MethodSource::Expressions::ProcExtensions do

  let(:blk) do
    Proc.new do
      puts "something"
      Proc.new  do
        puts "otherthing"
      end
    end
  end

  describe "#expressions" do
    it "returns a hash with values of expression objects" do
      result = blk.expressions.all? {|v| v.class == MethodSource::Expressions::Expression }
      expect(result).to be_true
    end

    it "returns expressions" do
      expect(blk.expressions.first.source).to eq("puts \"something\"")
    end
  end
end
