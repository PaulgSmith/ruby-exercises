require './lib/calculator'

describe Calculator do
  describe "#add" do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end
    it "returns the sum of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.add(1, 2, 3)).to eql(6)
    end

    describe "#multiply" do
      it "return the product of two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(5,2)).to eql(10)
      end
    end

    describe "#divide" do
      it "returns the quotient of two numbers" do
      calculator = Calculator.new
      expect(calculator.divide(10,2)).to eql(5)
      end
    end

    describe "#subtract" do
      it "return the difference of two numbers" do
        calculator = Calculator.new
        expect(calculator.subtract(5,2)).to eql(3)
      end
    end
  end
end