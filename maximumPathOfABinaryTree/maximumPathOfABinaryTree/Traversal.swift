//
//  Traversal.swift
//  maximumPathOfABinaryTree
//
//  Created by Muhammet BOZKURT on 22.03.2022.
//
//
//  traversal.swift
//  TraversalIn2DArray
//
//  Created by Muhammet BOZKURT on 22.03.2022.
//
import Foundation
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

//extension TreeNode: Hashable {
//
//    public func hash(into hasher: inout Hasher) {
//        hasher.combine(ObjectIdentifier(self))
//    }
//
//    public static func ==(lhs: TreeNode, rhs: TreeNode) -> Bool {
//        return lhs === rhs
//    }
//}
//    sum = 1  +  2  +  99
//        1
//      /    \
//     2        6
//    /  \     /  \
//   99  58   101  0
//      \
//       500
// 1- get all sums of all pathes
//
func makeTestData() -> TreeNode {
    let node1 = TreeNode(1)
    let node2 = TreeNode(2)
    let node6 = TreeNode(6)
    node1.left = node2
    node1.right = node6
    let node99 = TreeNode(99)
    node2.left = node99
    let node58 = TreeNode(58)
    node2.right = node58
    let node101 = TreeNode(101)
    node6.left = node101
    let node0 = TreeNode(0)
    node6.right = node0
    let node500 = TreeNode(500)
    node99.right = node500
    
    return node1
}

func getMaxPathValue(from node: TreeNode?) -> Int {
    
    if node == nil {
        return Int.min
    }
    
    if node?.left == nil && node?.right == nil {
        return node!.val
    }
    let leftVal = getMaxPathValue(from: node?.left) // 601
    let rightVal = getMaxPathValue(from: node?.right) // 107
    //
    return node!.val + max(leftVal, rightVal)
}

//let input = [[1], [8, 4], [2, 6, 9], [8, 5, 9, 3]]
//
//func printAllAdjastantNeighbours(on array: [[Int]]) {
//    // solve
//}

// TASKS
//add right node to 99 as 500
//get maximum path value
