def greet(*names)
  name = oxfordize(names)
  name = "my friend" if name.empty?

  if shouted?(name)
    shout(name)
  else
    say(name)
  end
end

def oxfordize(names)
  if names.size <= 2
    names.join(" and ")
  else
    "#{names[0..-2].join(", ")}, and #{names.last}"
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
