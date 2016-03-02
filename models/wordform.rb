class Wordformatter

def initialize(string)
  @string = string
end

def upcase
  @string = @string.upcase
end

def camel
  tim = []
  sim = @string.split
  for i in sim
  tim <<i.capitalize
end
return tim.join
end

end
