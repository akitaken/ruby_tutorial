# returns true if the string is empty or consists solely of whitespace
def blank?
  !!( self == "" || self.match(/^\s*$/) )
end
