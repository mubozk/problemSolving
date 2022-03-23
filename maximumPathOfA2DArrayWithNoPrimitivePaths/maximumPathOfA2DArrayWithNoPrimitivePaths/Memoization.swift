//
//  Memoization.swift
//  maximumPathOfA2DArrayWithNoPrimitivePaths
//
//  Created by Muhammet BOZKURT on 24.03.2022.
//

import Foundation
var tempMemo = [[Int]]()
var tempRow = 0
var tempColumn = 0
func arrayOfZero() -> [[Int]] {
    var memoOfZero = input
    for tempRow in 0..<input.count {
        for tempColumn in 0..<input[tempRow].count{
            memoOfZero[tempRow][tempColumn] = 0
        }
    }
    return memoOfZero
}

func memoization(rowCoordinate: Int, columnCoordinate: Int) -> Int {
    if ( memo[rowCoordinate][columnCoordinate] != 0 ) {
        memo[rowCoordinate][columnCoordinate] = input[rowCoordinate][columnCoordinate]
        return memo[rowCoordinate][columnCoordinate]
    }
    return 0
}
