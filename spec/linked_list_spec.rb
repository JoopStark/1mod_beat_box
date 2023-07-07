require './lib/node'
require './lib/linked_list'

describe LinkedList do
  context "setup" do
    it "has nil head" do
      list = LinkedList.new

      expect(list.head).to eq(nil)
    end
  
  end

  context "#append" do
    it "can recieve sound as node" do
      list = LinkedList.new

      list.append("doop")

      expect(list.head.data).to eq("doop")
    end
  end

  context "#count" do
    it "can recieve sound as node" do
      list = LinkedList.new

      list.append("doop")

      expect(list.count).to eq(1)
    end
  end

  context "#to_string" do
    it "can recieve sound as node" do
      list = LinkedList.new

      list.append("doop")

      expect(list.count).to eq("doop")
    end
  end
end