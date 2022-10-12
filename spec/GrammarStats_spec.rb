require 'GrammarStats'

RSpec.describe GrammarStats do
    it "Rerutns false if text starts with lowercase " do
    grammarStats = GrammarStats.new
    result = grammarStats.check("some text")
    expect(result).to eq false
    end

    it "Rerutns true if text starts with upcase " do
        grammarStats = GrammarStats.new
        result = grammarStats.check("Some text.")
        expect(result).to eq true
     end

     it "Rerutns false if text does not end with . " do
        grammarStats = GrammarStats.new
        result = grammarStats.check("Some text")
        expect(result).to eq false
     end

     it "Rerutns true if text does  end with . and starts with capital letter " do
      grammarStats = GrammarStats.new
      result = grammarStats.check("Some text.")
      expect(result).to eq true
   end

   it "Rerutns true if text does  end with ! and starts with capital letter " do
      grammarStats = GrammarStats.new
      result = grammarStats.check("Some text!")
      expect(result).to eq true
   end
   it "Rerutns true if text does  end with ? and starts with capital letter " do
      grammarStats = GrammarStats.new
      result = grammarStats.check("Some text?")
      expect(result).to eq true
   end
   it "Returns 50% if 1 out of 2 texts passed " do
      grammarStats = GrammarStats.new
      grammarStats.check("Some text?")
      grammarStats.check("Some text")
      result = grammarStats.percentage_good
      expect(result).to eq "50%"
   end
   it "Returns 100% if 2 out of 2 texts passed " do
      grammarStats = GrammarStats.new
      grammarStats.check("Some text?")
      grammarStats.check("Some text?")
      result = grammarStats.percentage_good
      expect(result).to eq "100%"
   end

end
