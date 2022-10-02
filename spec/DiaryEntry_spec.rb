require 'DiaryEntry'

RSpec.describe DiaryEntry do 
    it "" do
    diary_entry = DiaryEntry.new("First day at school", "It was tough")
    expect(diary_entry.title).to eq "First day at school"
    expect(diary_entry.contents).to eq "It was tough"
    end
end