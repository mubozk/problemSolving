//
//  Traverse.swift
//  maximumPathOfA2DArrayWithNoPrimitivePaths
//
//  Created by Muhammet BOZKURT on 23.03.2022.
//

import Foundation
let input = [
    [1],
    [8, 4],
    [2, 6, 9],
    [8, 5, 9, 3]
]


func printAllAdjacentNeighbours(on array: [[Int]], row: Int, column: Int) -> Int {
    
    let primitiveChecker = primitiveChecker(valueFromArray: array[row][column])
    if primitiveChecker == true {
        return 0
    }
    // always comes false
    // because this array isn't optional so it doesnt contain
    // nil
    //    if  array[row+1][column] > Int.min && array[row+1][column+1] > Int.min {
    //        return array[row][column]
    //    }
    
    if row >= array.count-1 || column >= array.count-1 {
        return array[row][column]
    }
    
    let leftAdjacent = printAllAdjacentNeighbours(on: input, row: row+1, column: column )
    let rightAdjacent = printAllAdjacentNeighbours(on: input, row: row+1, column: column+1 )
    // need to keep a hold of current rows and columns indexes
    return array[row][column] + max(leftAdjacent, rightAdjacent)
}



//
//                                      Addresses
//          1                           1-> [0, 0]
//         / \                              /  \
//        8   4                      8->[1,0]  4->[1,1]
//       / \ / \                        /    \/      \
//      2   6   9               2->[2,0]   6->[2,1]  9->[2,2]
//     / \ / \ / \                  /    \/        \/        \
//    8   5   9   3         8->[3,0]    5->[3,1]  9->[3,2]   3->[3,3]
//
//
//
