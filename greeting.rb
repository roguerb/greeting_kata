def greet(*names)
  names.compact!
  return say("my friend") if names.empty?

  shouted, spoken = names.partition(&method(:shouted?))

  [spoken, shouted]
    .reject(&:empty?)
    .map(&method(:greeting_for))
    .join(" AND ")
end

def greeting_for(names)
  combined = combine(names)
  shouted?(combined) ? shout(combined) : say(combined)
end

def combine(names)
  case names.size
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
