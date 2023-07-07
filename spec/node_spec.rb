require './lib/node'

describe Node do
  context "set-up" do
    it "recieves data" do
      node = Node.new("plop")

      expect(node.data).to be("plop")
    end

    it ""

  end
end
