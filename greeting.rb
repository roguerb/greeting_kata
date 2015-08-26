def greet(name = nil)
  name ||= "my friend"
  if shouted?(name)
    shout(name)
  else
    say(name)
  end
end

def shouted?(name)
  name == name.upcase
end

def shout(name)
  "HELLO #{name}!"
end

def say(name)
  "Hello, #{name}."
end
