class Beatbox
  attr_reader :list
  def initialize
    @list = LinkedList.new
    @BEATBOXSOUNDS = ["tee", "dee", "deep", "bop", "boop", "la", "na", "doo", "woo", "hoo", "shu", "ditt"]
  end

  def append(string)
    clean(string).each {|sound| list.append(sound)}
  end

  def count
    @list.count
  end

  def play
    `say -r 500 -v Boing #{@list.to_string}`
  end

  def all
    @list.to_string
  end

  def prepend(string)
    clean(string).each {|sound| list.prepend(sound)}
  end

  private

  def clean(object)
    string = object.to_s
    sounds = string.split(" ")
    proper = sounds.select {|word| word if @BEATBOXSOUNDS.include?(word)}
  end
end
