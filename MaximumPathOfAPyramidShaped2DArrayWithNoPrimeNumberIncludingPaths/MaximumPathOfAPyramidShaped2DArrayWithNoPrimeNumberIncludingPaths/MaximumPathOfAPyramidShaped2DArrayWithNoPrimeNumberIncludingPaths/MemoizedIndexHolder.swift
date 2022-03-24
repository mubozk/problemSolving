//
//  MemoizedIndexHolder.swift
//  MaximumPathOfAPyramidShaped2DArrayWithNoPrimeNumberIncludingPaths
//
//  Created by Muhammet BOZKURT on 24.03.2022.
//
import Foundation

//Creating a temporary memo array for my operation to be precise
var tempMemo = [[Int]]()

// Getting an 2D array filled with zero with a pyramid shape that wanted
var memo = arrayOfZero()
func arrayOfZero() -> [[Int]] {
    var memoOfZero = input
    for tempRow in 0..<input.count {
        for tempColumn in 0..<input[tempRow].count{
            memoOfZero[tempRow][tempColumn] = 0
        }
    }
    return memoOfZero
}
// Adding the traversed elements from the pyramid to memorize the pathes that have
// been visited
func memoization(rowCoordinate: Int, columnCoordinate: Int) -> Int {
    if ( memo[rowCoordinate][columnCoordinate] != 0 ) {
        memo[rowCoordinate][columnCoordinate] = input[rowCoordinate][columnCoordinate]
        return memo[rowCoordinate][columnCoordinate]
    }
    return 0
}
