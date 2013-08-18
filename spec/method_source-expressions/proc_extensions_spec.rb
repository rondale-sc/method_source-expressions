require "spec_helper"

describe MethodSource::Expressions::ProcExtensions do

  let(:blk) do
    Proc.new do
      puts "something"
      Proc.new  do
        "Something else"
      end
    end
  end

  describe "#expressions" do
    it "returns a hash with values of expression objects" do
      require 'pry'; binding.pry
      result = blk.expressions.values.all? {|v| v.class == MethodSource::Expressions::Expression }
      expect(result).to be_true
    end

    it "returns a hash with keys of ranges" do
      result = blk.expressions.keys.all? {|k| k.class == Range}
      expect(result).to be_true
    end

    it "returns expressions" do
      expect(blk.expressions[7..7].source).to eq("puts \"something\"")
    end
  end
end
