require 'GrammarStats'

RSpec.describe GrammarStats do
    it "Rerutns false if text starts with lowercase " do
    grammarStats = GrammarStats.new
    result = grammarStats.check("some text")
    expect(result).to eq false
    end

    it "Rerutns true if text starts with upcase " do
        grammarStats = GrammarStats.new
        result = grammarStats.check("Some text")
        expect(result).to eq true
    end

end
