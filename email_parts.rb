 # return an array of the username and domain for a standard email address of the form username@example.com

def email_parts(email)
  return email.downcase.split('@')
end
