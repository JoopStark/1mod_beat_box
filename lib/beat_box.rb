class Beatbox
  attr_reader :list
 def initialize
  @list = LinkedList.new
 end

 def append(string)
  sounds = string.split(" ")
  sounds.each {|sound| list.append(sound)}
 end

 def count
  @list.count
 end

 def play
  `say -r 500 -v Boing #{@list.to_string}`
 end













end
