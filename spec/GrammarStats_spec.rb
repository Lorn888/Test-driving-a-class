require 'GrammarStats'

RSpec.describe GrammarStats do
    it "Rerutns false if text starts with lowercase " do
    grammarStats = GrammarStats.new
    result = grammarStats.check("some text")
    expect(result).to eq false
    end
end
