class GrammarStats
    def initialize
      # ...
    end
  
    def check(text) # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
     p first_letter = text.split("")[0]
     p last_letter = text.split("")[-1]
     

      if first_letter === first_letter.capitalize && (last_letter === "." || "?" || "!")
        return true
      else 
        false
      end
    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
    end
  end
  
  ok = GrammarStats.new
    p ok.check("Some text!")