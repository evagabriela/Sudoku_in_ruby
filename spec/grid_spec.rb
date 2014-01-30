require 'spec_helper.rb'

describe Grid do 
  let(:grid) { Grid.new('1'*9 + '2'*9 + '3'*9 + '4'*9 +
                '5'*9 + '6'*9 + '7'*9 + '8'*9 + '9'*9 ) }

  context "#initialize" do 

    it "rejects bad input" do
      expect {
        Grid.new('I dont know what I am typing here instead of the correct input')
      }.to raise_error
    end

    it "accepts the correct input" do 
      expect(Grid.new('0'*81)).to be_a Grid
    end

    it "generates 9 Rows, 9 Columns, and 9 Boxes" do
      Grid.new ('0'*81).should_receive(:create_rows).exactly(9).time
    end
  end 

  describe "#is_solved?" do
    context "with no 0's" do      
      let(:grid) { Grid.new('1'*81) } 
      it "returns true" do 
        grid.is_solved?.should be_true
      end
    end


    context "with some 0's" do 
      let(:grid) { Grid.new('1'*80+'0') } 
      it "returns false" do 
        grid.is_solved?.should be_false
      end
    end
  end

end
