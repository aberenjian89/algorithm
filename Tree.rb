class Node 
    attr_accessor :data,:left_node,:right_node
    def initialize(data) 
        @data = data 
        left_node = nil
        right_node = nil
    end
    
    def to_s
       @data 
    end
    
    def inorder
       return if self == nil 
    
       if self.left_node != nil 
           self.left_node.inorder
       end
       
       puts self.to_s
        
       if self.right_node != nil 
           self.right_node.inorder
       end   
            
        
    end
    
    def preorder
      return if self == nil 
      puts self.to_s 
      if self.left_node != nil   
        self.left_node.preorder
      end
      if self.right_node !=nil   
        self.right_node.preorder
      end
    end
    
    def postorder
        return if self == nil 
        if self.left_node != nil 
            self.left_node.postorder
        end
        if self.right_node != nil 
            self.right_node.postorder
        end
        puts self.to_s
    end
    
    
    
end


root = Node.new(1)

root.left_node = Node.new(2)
root.right_node = Node.new(3)

root.left_node.left_node = Node.new(4)
root.left_node.right_node = Node.new(5)



puts "----IN-ORDER-----"
root.inorder
puts "----PRE-ORDER-----"
root.preorder
puts "----POST-ORDER-----"
root.postorder


