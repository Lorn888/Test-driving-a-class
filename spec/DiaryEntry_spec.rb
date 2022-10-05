require 'DiaryEntry'

RSpec.describe DiaryEntry do 
    it "returns title and contents" do
    diary_entry = DiaryEntry.new("First day at school", "It was tough")
    expect(diary_entry.title).to eq "First day at school"
    expect(diary_entry.contents).to eq "It was tough"
    end
    it "counts the contents words" do
    diary_entry = DiaryEntry.new("First day at school", "It was tough")
    expect(diary_entry.count_words).to eq 3
    end
    it "returns an estimate time it takes to read the contents" do
    diary_entry = DiaryEntry.new("First day at school", "It was tough really really tough")
    expect(diary_entry.reading_time(50)).to eq 1
    end
    it "returns a chunk of content to read" do
    diary_entry = DiaryEntry.new("First day at school", "It was tough really really tough")
    expect(diary_entry.reading_chunk(2, 2)).to eq "It was tough really"
    
    end 
end