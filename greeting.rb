def greet(*names)
  name = names.join(" and ")
  name = "my friend" if name.empty?

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
