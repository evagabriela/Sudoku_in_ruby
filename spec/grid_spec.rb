require 'spec_helper.rb'

describe Grid do 
  describe "#new" do
    it "can be initialized with a string of integers" do
    end

    it "accepts correct input" do
      expect(Grid.new('0'*81)).to be_a Grid
    end

    it " raise an error for an incorrect input" do
      expect { Grid.new('this is not a grid') }.to raise_error
    end

    it "generates row of objects" do
    end

    it "generates column of objects "do
    end
  end 

end