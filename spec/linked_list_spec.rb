require './lib/node'
require './lib/linked_list'

describe LinkedList do
  context "single node" do
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
        
        expect(list.count).to eq(0)

        list.append("doop")

        expect(list.count).to eq(1)
      end
    end

    context "#to_string" do
      it "can recieve sound as node" do
        list = LinkedList.new

        list.append("doop")

        expect(list.to_string).to eq("doop")
      end
    end
  end


  context "two nodes" do 
    it "can add two nodes" do
      list = LinkedList.new

      list.append("doop")

      expect(list.head.data).to eq("doop")

      list.append("deep")

      expect(list.head.next_node.data).to eq("deep")
    end
    
    it "can count print two strings" do
      list = LinkedList.new

      list.append("doop")

      list.append("deep")

      expect(list.to_string).to eq("doop deep")
    end 
    
  end

  context "three nodes" do

    it "can count print three strings" do
      list = LinkedList.new

      list.append("deep")
      list.append("doop")
      list.append("deep")

      expect(list.to_string).to eq("deep doop deep")
    end 
  end
end