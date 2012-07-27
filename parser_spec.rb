require './parser'

describe Parser do
  it { Parser.parse("this means nothing").should be_nil }

  describe "what does" do
    it { Parser.parse("what does bootylicious mean?").should == "bootylicious" }
    it { Parser.parse("what does \"bootylicious\" mean?").should == "bootylicious" }
    it { Parser.parse("what does it mean?").should be_nil }
    it { Parser.parse("what does that mean?").should be_nil }
  end
  
  describe "what is" do
    it { Parser.parse("what is an elephant?").should == "elephant" }
    it { Parser.parse("what is a elephant?").should == "elephant" }
    it { Parser.parse("what is a \"elephant\"?").should == "elephant" }
  end
end
