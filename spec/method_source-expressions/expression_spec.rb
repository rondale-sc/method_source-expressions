require 'spec_helper'

describe MethodSource::Expressions::Expression do
  let(:options) { {source: "expr", line_number: "1", location: "/somepath"} }
  subject(:expression) { described_class.new(options) }

  it "exposes its source" do
    expect(expression.source).to eq("expr")
  end

  it "exposes its line_number" do
    expect(expression.location).to eq("/somepath")
  end

  context "#range" do
    it "knows its range representation" do
      expect(expression.range).to eq(1..1)
    end
  end
end
