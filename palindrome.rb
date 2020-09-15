# Returns true for a palindrome
def palindrome?(string)
  processed_content = string.downcase
  processed_content == processed_content.reverse
end
