def greet(*names)
  name = combine(names.compact)

  if shouted?(name)
    shout(name)
  else
    say(name)
  end
end

def combine(names)
  case names.size
    when 0
      "my friend"
    when 1
      names.first
    when 2
      names.join(" and ")
    else
      oxfordize(names)
  end
end

def oxfordize(names)
  last_name = names.pop
  "#{names.join(", ")}, and #{last_name}"
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
