//
//  Traverse.swift
//  maximumPathOfA2DArrayWithNoPrimitivePaths
//
//  Created by Muhammet BOZKURT on 23.03.2022.
//

import Foundation
//let input = [
//         [1],
//        [8, 4],
//       [2, 6, 9],
//      [8, 5, 2, 3]
//]
let input = [
    [215],
    [193, 124],
    [117, 237, 442],
    [218, 935, 347, 235],
    [320, 804, 522, 417, 345],
    [229, 601, 723, 835, 133, 124],
    [248, 202, 277, 433, 207, 263, 257],
    [369, 464, 504, 528, 516, 716, 871, 182],
    [461, 441, 426, 656, 863, 560, 380, 171, 923],
    [381, 348, 573, 533, 447, 632, 387, 176, 975, 449],
    [223, 711, 445, 645, 245, 543, 931, 532, 937, 541, 444],
    [330, 131, 333, 928, 377, 733, 017, 778, 839, 168, 197, 197],
    [131, 171, 522, 137, 217, 224, 291, 413, 528, 520, 227, 229, 928],
    [223, 626, 034, 683, 839, 053, 627, 310, 713, 999, 629,817, 410, 121],
    [924, 622, 911, 233, 325, 139, 721, 218, 253, 223, 107, 233, 230, 124, 233]
]

func printAllAdjacentNeighbours(on array: [[Int]], row: Int, column: Int) -> Int {
    
    let primeChecker = primeChecker(valueFromArray: array[row][column])
    if primeChecker == true {
        return 0
    }
    
    
    if row >= array.count-1 || column >= array.count-1 {
        return array[row][column]
    }
    if memo[row][column] != 0 {
        return memo[row][column]
    }
    else{
        
        
        //amateur debugging methods
        let leftAdjacent = printAllAdjacentNeighbours(on: input, row: row+1, column: column )
        //        print (left)
        let rightAdjacent = printAllAdjacentNeighbours(on: input, row: row+1, column: column+1 )
        //        print (right)
        // need to keep a hold of current rows and columns indexes
        memo[row][column] = array[row][column] + max(leftAdjacent, rightAdjacent)
        return array[row][column] + max(leftAdjacent, rightAdjacent)
    }
}



//                                      Addresses
//          1                           1-> [0, 0]
//         / \                              /  \
//        8   4                      8->[1,0]  4->[1,1]
//       / \ / \                        /    \/      \
//      2   6   9               2->[2,0]   6->[2,1]  9->[2,2]
//     / \ / \ / \                  /    \/        \/        \
//    8   5   9   3         8->[3,0]    5->[3,1]  9->[3,2]   3->[3,3]
