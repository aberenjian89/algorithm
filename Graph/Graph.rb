require 'byebug'
class Node
    attr_accessor :name, :adjacent, :visited
    def initialize(name)
        @adjacent = []
        @name = name;
        @visited = false
    end
    
    def to_s
       @name 
    end
    
    def reset_visted
       @visted = false 
    end
    
end

a = Node.new("A")
b = Node.new("B")
c = Node.new("C")
d = Node.new("D")
e = Node.new("E")
f = Node.new("F")
g = Node.new("G")
h = Node.new("H")

a.adjacent.push(b)
a.adjacent.push(d)
a.adjacent.push(g)

b.adjacent.push(a)
b.adjacent.push(e)
b.adjacent.push(f)


c.adjacent.push(h)

d.adjacent.push(a)
d.adjacent.push(f)

e.adjacent.push(b)
e.adjacent.push(g)

f.adjacent.push(b)
f.adjacent.push(c)
f.adjacent.push(d)

g.adjacent.push(a)
g.adjacent.push(e)

h.adjacent.push(c)


def dfs(node)
    stack = []
    stack << node
    node.visited = true
    puts node.to_s
    until stack.empty?
        node.adjacent.each do |n|
           if (n.visited == false)
               dfs(n)
           end
        end
        stack.pop
    end
end

def bfs(node)
    queue = []
    queue << node
    until queue.empty?
        n = queue.shift
        puts n.to_s
        n.visited = true
        n.adjacent.each do |nod|  
           if (nod.visited == false)
               nod.visited = true
               queue << nod
           end
        end
    end
end




dfs(a)
bfs(a)





