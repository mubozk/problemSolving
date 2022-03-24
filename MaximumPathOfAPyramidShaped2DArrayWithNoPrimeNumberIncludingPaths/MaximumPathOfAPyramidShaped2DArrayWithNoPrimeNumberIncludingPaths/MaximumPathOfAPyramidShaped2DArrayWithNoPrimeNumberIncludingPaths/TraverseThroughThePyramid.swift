//
//  TraverseThroughThePyramid.swift
//  MaximumPathOfAPyramidShaped2DArrayWithNoPrimeNumberIncludingPaths
//
//  Created by Muhammet BOZKURT on 24.03.2022.
//

import Foundation

func printAllAdjacentNeighbours(on array: [[Int]], row: Int, column: Int) -> Int {
    
    // Checking if the value visited is a prime number or not
    // from "PrimeNumberChecker"
    let primeChecker = primeChecker(valueFromArray: array[row][column])
    if primeChecker == true {
        return 0
    }
    // Checking if this is the last element of the desired input
    // if it is then we should not go any further
    if row >= array.count-1 || column >= array.count-1 {
        return array[row][column]
    }
    // Checking If our current value index has been visited
    // If it was visited we shouldn't calculate it again and get the result directly
    // for a precise dynamic programming
    if memo[row][column] != 0 {
        return memo[row][column]
    }
    else{
        // Recursively calling and traversing through the 2D array input (the pyramid)
        let leftAdjacent = printAllAdjacentNeighbours(on: input, row: row+1, column: column )
        let rightAdjacent = printAllAdjacentNeighbours(on: input, row: row+1, column: column+1 )
        // The calculation part that gets us the sum value
        memo[row][column] = array[row][column] + max(leftAdjacent, rightAdjacent)
    
        return array[row][column] + max(leftAdjacent, rightAdjacent)
    }
}

// //////////////////////////////////////////////////////////////////////////
// Example
// [
//         [1],
//        [8, 4],
//       [2, 6, 9],
//      [8, 5, 2, 3]
// ]
// //////////////////////////////////////////////////////////////////////////
//                                      Addresses
//          1                           1-> [0, 0]
//         / \                              /  \
//        8   4                      8->[1,0]  4->[1,1]
//       / \ / \                        /    \/      \
//      2   6   9               2->[2,0]   6->[2,1]  9->[2,2]
//     / \ / \ / \                  /    \/        \/        \
//    8   5   9   3         8->[3,0]    5->[3,1]  9->[3,2]   3->[3,3]
// //////////////////////////////////////////////////////////////////////////
// Should add 1 to the row in every recursive call and 1 to the column if
// we are calling the rightmost adjacent index of our value
// //////////////////////////////////////////////////////////////////////////
