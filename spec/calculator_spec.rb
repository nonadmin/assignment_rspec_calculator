require "calculator.rb"

describe "calculator" do
  let(:calc) { Calculator.new }

  describe "#initialize" do
    it "should instantiate a calculator" do
      expect(calc).to be_a(Calculator)      
    end

    it "should have a default memory of nil" do
      expect(calc.memory).to eql(nil)
    end
  end

  describe "#add" do
    it "should add two integers together" do
      expect( calc.add(3,8) ).to eq(11)
    end
    
    it "should add two negative integers together" do
      expect( calc.add(-3,-8) ).to eq(-11)      
    end

    it "should add two floats together" do
      expect( calc.add(4.3, 7.8) ).to eq(12.1)
    end
  end

  describe "#subtract" do
    it "should subtract one integer from another" do
      expect( calc.subtract(3,8) ).to eq(-5) 
    end

    it "should handle subtracting a negative integer" do
      expect( calc.subtract(-1,-4) ).to eq(3)
    end

    it "should subtract one float from another" do
      expect( calc.subtract(5.3, 4.1) ).to be_within(0.1).of(1.2)
    end
  end

  describe "#mulitply" do
    it "should multiply two integers" do
      expect( calc.multiply(5,3) ).to eq(15)
    end

    it "should mulitply two negative integers" do
      expect( calc.multiply(-5,-3) ).to eq(15)
    end
    
    it "should mulitply two floats" do
      expect( calc.multiply(5.2, 8.9) ).to be_within(0.01).of(46.28)
    end
  end

  describe "#divide" do
    it "should divide two integers" do
      expect( calc.divide(10,2) ).to eq(5)
    end

    it "should divide two negative integers" do
      expect( calc.divide(-10,-2) ).to eq(5)
    end
    
    it "should divide two floats" do
      expect( calc.divide(8.8, 2.2) ).to eq(4)
    end

    it "should return a float if there is a remainder" do
      expect( calc.divide(5,3) ).to be_within(0.01).of(1.67)
    end

    it "should raise an ArgumentError if dividing by zero" do
      expect{ calc.divide(10,0) }.to raise_error(ArgumentError)
    end
  end

  describe "#pow" do
    it "should raise one integer to the power of another" do
      expect( calc.pow(5,3) ).to eq(125)
    end

    it "should raise an integer to the power of a negative integer" do
      expect( calc.pow(2,-2) ).to be_within(0.01).of(0.25)
    end

    it "should raise an integer to the power of a float" do
      expect( calc.pow(2, 2.5) ).to be_within(0.01).of(5.66)
    end
  end

  
end