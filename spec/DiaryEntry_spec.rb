require 'DiaryEntry'

RSpec.describe DiaryEntry do 
    it "" do
    diary_entry = DiaryEntry.new("First day at school", "some contents")

    expect(diary_entry.title).to eq "First day at school"
    end
end