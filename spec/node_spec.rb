require './lib/node'

describe Node do
  context "set-up" do #instaniated new node do be more descriptive
    it "recieves data" do
      node = Node.new("plop")

      expect(node.data).to eq("plop")
    end

    it "can check if node is after it" do 
      node = Node.new("plop")
      
      expect(node.next_node).to eq(nil)
    end
  end
end

