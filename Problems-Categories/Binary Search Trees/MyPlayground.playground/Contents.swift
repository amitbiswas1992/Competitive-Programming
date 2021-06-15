import UIKit


// Definition for a binary tree node.

class Program {
    
    class Node {
        var name: Int
        var adjacentNode: [Node]
        
        init(name: Int) {
            self.name = name
            adjacentNode = []
        }
        
        //    func addChild(name: Int) -> Node {
        //        let childNode = Node(name: name)
        //        adjacentNode.append(childNode)
        //
        //        return self
        //    }
        
        func BFS(_ root: Node, _ n: Int){
            
            var vis = Array(repeating: 0 , count: n)
            var level = Array(repeating: 0, count: n)
            var que: [Node] = []
            que.append(root) // level = 0
            vis[root.name] = 1
            while que.count > 0 {
                var cur = que[0]
                que.removeFirst()
                for item in cur.adjacentNode {
                    if vis[item.name] == 0 {
                        que.append(item)
                        vis[item.name] = 1
                        // additional
                        level[item.name] = level[cur.name] + 1
                    }
                }
            }
        }
    }
    
}
