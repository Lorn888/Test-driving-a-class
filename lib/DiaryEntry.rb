class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      # ...
      @title = title
      @contents = contents
      @word_to_start = 0
    end
    
    def title
      # Returns the title as a string
      return @title
    end
  
    def contents
      # Returns the contents as a string
      return @contents
    end
  
    def count_words
      # Returns the number of words in the contents as an integer
      return contents.split(" ").count
    end
  
    def reading_time(wpm) # wpm is an integer representing the number of words the
                          # user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # for the contents at the given wpm.
      time = (count_words / wpm).floor
      if time <= 0 
        return 1
      else
        time
      end
    end
  
    def reading_chunk(wpm, minutes) 
      words_to_read = wpm * minutes 
      @word_to_start = word_to_start + words_to_read
      return @contents.split(" ")[@word_to_start..words_to_read].join(" ")

      # `wpm` is an integer representing the number
                                    # of words the user can read per minute
                                    # `minutes` is an integer representing the
                                    # number of minutes the user has to read
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
    end
  end

  diary_entry = DiaryEntry.new("First day at school", "It was tough really really tough")
  p diary_entry.reading_chunk(2, 2)
    