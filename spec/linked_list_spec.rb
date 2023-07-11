require './lib/node'
require './lib/linked_list'
require './lib/beat_box'
require 'pry'

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

    it "can count print string is no nodes" do
      list = LinkedList.new

      expect(list.to_string).to eq("")
    end 
  end

  context "Iteration 2 features" do
    
    it "can add a node to the front aka #prepend" do
      list = LinkedList.new

      list.append("plop")
      list.append("suu")

      expect(list.to_string).to eq("plop suu")

      list.prepend("dop")

      expect(list.to_string).to eq("dop plop suu")
      expect(list.count).to eq(3)
    end

    it "can insert a node between the head and tail" do
      list = LinkedList.new

      list.append("plop")
      list.append("suu")
      list.prepend("dop")
      list.insert(1, "woo")

      expect(list.to_string).to eq("dop woo plop suu")
    end
  end

  context "Iteration 2 advanced features" do
    
    it "can find a single node by index(zero index)with #find()" do
      list = LinkedList.new

      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.to_string).to eq("deep woo shi shu blop")

      expect(list.find(2, 1)).to eq("shi")
    end

    it "can find a multiple nodes by single index with #find()" do
      list = LinkedList.new

      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.find(1, 3)).to eq("woo shi shu")
    end

    it "can use #include? to get true" do
      list = LinkedList.new

      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.include?("deep")).to be true
    end

    it "can use #include? to get false" do
      list = LinkedList.new

      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.include?("dep")).to be false
    end

    it "can #pop of end" do
      list = LinkedList.new

      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.to_string).to eq("deep woo shi shu blop")

      expect(list.pop).to eq("blop")
      expect(list.pop).to eq("shu")

      expect(list.to_string).to eq("deep woo shi")
    end
  end
end