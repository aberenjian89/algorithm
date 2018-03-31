class Node
    attr_accessor :value,:left,:right
  def initialize(value)
    @value = value
  end
end


def insert(root,val)
  if root == nil
    node = Node.new(val)
    return node
  elsif root.value <= val
    root.right = insert(root.left,val)
  else
    root.left = insert(root.right,val)
  end
  return root
end


# [3,10,4,5]

root = insert(root,3)
root = insert(root,10)
root = insert(root,4)
root = insert(root,5)
p root
p root.left.value

    # 3
        #10
      #4
          #5



#p root.right
