states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

# Returns a URL-friendly version of a string.
#   Example: "North Dakota" -> "north-dakota"
def urlify(string)
  string.downcase.split.join('-')
end

# urls: Imperative version
def imperative_urls(states)
  urls = []
  states.each do |state|
    urls << urlify(state)
  end
  urls
end
p imperative_urls(states)

# urls: Functional version
def functional_urls(states)
  states.map { |state| urlify(state) }
end
puts functional_urls(states).inspect

# takes in the states variable and returns an array of URLs of the form https://example.com/<urlified form>.

def format_urls(base_url,states)
  states.map do |state|
    "https://#{base_url}/#{urlify(state)}"
  end
end
p format_urls("helloworld.com",states)

# singles: Imperative version
def imperative_singles(states)
  singles = []
  states.each do |state|
    if state.split.length == 1
      singles << state
    end
  end
  singles
end
puts imperative_singles(states).inspect


# singles: Functional version
def functional_singles(states)
  states.select { |state| state.split.length == 1 }
end
puts functional_singles(states).inspect

# test for the presence of the string “Dakota”
def select_dakotas(states)
  states.select { |state| state.include?("Dakota")}
end
p select_dakotas(states)

# tests for the length of the split array being 2
def imperative_doubles(states)
  states.select { |state| state.split.length == 2 }
end
p imperative_doubles(states)

numbers = 1..10

# sum: Imperative solution
def imperative_sum(numbers)
  total = 0
  numbers.each do |n|
    total +=n
  end
  total
end
puts imperative_sum(numbers)

# sum: Functional solution
def functional_sum(numbers)
  numbers.reduce { |total, n| total + n }
end
puts functional_sum(numbers)

# lengths: Imperative version
def imperative_lengths(states)
  lengths = {}
  states.each do |state|
    lengths[state] = state.length
  end
  lengths
end
puts imperative_lengths(states)

# lengths: Functional version
def functional_lengths(states)
  states.reduce({}) do |lengths, state |
    lengths[state] = state.length
    lengths
  end
end
puts functional_lengths(states)

# lengths: Functional version using 'inject'
def functional_lengths_injected(states)
  states.inject({}) do |lengths, state |
    lengths[state] = state.length
    lengths
  end
end
puts functional_lengths_injected(states)

## EXERCISES

# multiple: Functional solution
def functional_muliplied_sum(numbers)
  numbers.reduce { |total, n| total * n }
end
puts functional_muliplied_sum(numbers)

# lengths: Functional version - one line
def functional_lengths_1line(states)
  states.reduce({}) {|lengths, state| lengths[state] = state.length; lengths}
end
puts "ONE LINE:"
puts functional_lengths_1line(states)


# not singles: Functional version
def functional_not_singles(states)
  states.reject { |state| state.split.length == 1 }
end
puts functional_not_singles(states).inspect
