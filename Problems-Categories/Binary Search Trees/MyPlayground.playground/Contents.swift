import UIKit


// Definition for a binary tree node.

//class Program {
//
//    class Node {
//        var name: Int
//        var adjacentNode: [Node]
//
//        init(name: Int) {
//            self.name = name
//            adjacentNode = []
//        }
//
//        //    func addChild(name: Int) -> Node {
//        //        let childNode = Node(name: name)
//        //        adjacentNode.append(childNode)
//        //
//        //        return self
//        //    }
//
//        func BFS(_ root: Node, _ n: Int){
//
//            var vis = Array(repeating: 0 , count: n)
//            var level = Array(repeating: 0, count: n)
//            var que: [Node] = []
//            que.append(root) // level = 0
//            vis[root.name] = 1
//            while que.count > 0 {
//                var cur = que[0]
//                que.removeFirst()
//                for item in cur.adjacentNode {
//                    if vis[item.name] == 0 {
//                        que.append(item)
//                        vis[item.name] = 1
//                        // additional
//                        level[item.name] = level[cur.name] + 1
//                    }
//                }
//            }
//        }
//    }
//
//}




public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init( val: Int,  left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

// 8968790080980
func levelOrder(_ root: TreeNode?) -> [[Int]] {
       guard root != nil else { return [] }
       var result: [[Int]] = []
       
       var queue: [TreeNode?] = []
       queue.append(root)
       
       while(!queue.isEmpty) {
           var count = queue.count - 1
           var temp: [Int] = []
            while(count >= 0) {
              if let node = queue.removeFirst() {
                  temp.append(node.val)
                  count -= 1
                  if let left = node.left { queue.append(left) }
                  if let right = node.right { queue.append(right) }
              }
           }
           // queue size = 2 ,
           result.append(temp)  
       }
       
       return result
   }


