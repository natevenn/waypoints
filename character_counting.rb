class CharacterCount
  attr_reader :string

  def initialize
    @string = string
  end

  def character_count(string)
    @string = string
    output = ""
    order.each do |char, occurrence|
      output += "#{char}: #{occurrence}\n"
  end
    output
  end

  def occurences
    each_char = {}
    string.chars.each do |char|
      each_char.include?(char) ? each_char[char] += 1 : each_char[char] = 1
    end
    each_char
  end

  def order
    occurences.sort_by do |char, occurrence|
      occurrence
    end.reverse.to_h
  end
end
