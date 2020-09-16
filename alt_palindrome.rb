# Defines a Phrase class
class Phrase
  attr_accessor :content

  def initialize(my_content)
    @content = my_content
  end

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content = self.content.downcase
    processed_content == processed_content.reverse
  end

  # Makes the phrase LOUDER
  def louder
    self.content.upcase
  end
end
