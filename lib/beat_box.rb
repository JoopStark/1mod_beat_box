class Beatbox
  attr_reader :list
  attr_accessor :rate, :voice
  def initialize (string = "")
    @list = LinkedList.new
    @voice = "Boing"
    @rate = 500
    @start = append(string)
  end
  
  BEATBOXSOUNDS = ["tee", "dee", "deep", "bop", "boop", "la", "na", "doo", "woo", "hoo", "shu", "ditt"]


  def append(string)
    clean(string).each {|sound| list.append(sound)}
  end
  
  def prepend(string)
    clean(string).each {|sound| list.prepend(sound)}
  end
  
  def count
    @list.count
  end

  def play
    `say -r #{@rate} -v #{@voice} #{@list.to_string}`
  end

  def all
    @list.to_string
  end


  def reset_rate
    @rate = 500
    500
  end

  def reset_voice
    @voice = "Boing"
    "Boing"
  end

  private

  def clean(object)
    string = object.to_s
    sounds = string.split(" ")
    proper = sounds.select {|word| word if BEATBOXSOUNDS.include?(word)}
  end
end
