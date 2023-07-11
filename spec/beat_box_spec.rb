require './lib/node'
require './lib/linked_list'
require './lib/beat_box'
require 'pry'

describe Beatbox do
 context "Iteration 3 beat box part 1" do
    it "has a headless list" do
      bb = Beatbox.new

      expect(bb.list.head).to eq(nil)
    end

    it "can take a string and split into three nodes" do
      bb = Beatbox.new

      bb.append("deep doo ditt")
      
      expect(bb.list.head.data).to eq("deep")
      expect(bb.list.head.next_node.data).to eq("doo")
    end

    it "can use #count to count nodes" do
      bb = Beatbox.new

      bb.append("deep doo ditt")
      bb.append("woo hoo shu")

      
      expect(bb.count).to eq(6)
    end
  end

  context "Iteration 3 beat box part 2" do
    it "will play the sounds in zsh" do
      bb = Beatbox.new

      bb.append("deep doo ditt woo hoo shu")
      expect(bb.count).to eq(6)
      expect(bb.list.count).to eq(6)

      bb.play
    end
  end

  context "Edge cases" do
    it "will only take beat box type sounds" do
      bb = Beatbox.new

      bb.append("deep")

      expect(bb.all).to eq("deep")
      
      bb.append("Mississippi")
      
      expect(bb.all).to eq("deep")
      
      bb.prepend("tee tee tee Mississippi")
      
      expect(bb.all).to eq("tee tee tee deep")
    end

    it "will only take beat box type sounds not numbers" do
      bb = Beatbox.new

      bb.append("deep")

      expect(bb.all).to eq("deep")
      
      bb.append("Mississippi   deep   ")
      
      expect(bb.all).to eq("deep deep")
      
      bb.prepend(7)
      bb.prepend(:dogs)
      bb.prepend(nil)
      bb.prepend([1, 3])
      
      expect(bb.all).to eq("deep deep")
    end

    it "can change rate" do
      bb = Beatbox.new("deep dop dop deep")

      bb.play
      bb.rate = 100
      bb.play
      bb.voice = "Daniel"
      bb.play
      
      expect(bb.reset_rate).to be(500)
      expect(bb.reset_voice).to eq("Boing")

      bb.play
    end
  end
end