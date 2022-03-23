//
//  Prime Checker.swift
//  maximumPathOfA2DArrayWithNoPrimitivePaths
//
//  Created by Muhammet BOZKURT on 24.03.2022.
//
import Foundation

func primeChecker (valueFromArray: Int) -> Bool {

    var counter = 5

    if valueFromArray == 1 {
        return false
    }
    if (valueFromArray == 2 || valueFromArray == 3) {
        return true
    }
    
    if ( valueFromArray % 2 == 0 || valueFromArray % 3 == 0 ){
        return false
    }

    while ( counter * counter ) < valueFromArray {
        if ( valueFromArray % counter == 0 || valueFromArray % ( counter + 2 ) == 0 ) {
            return false
        }
        counter = counter + 6
    }

    return true
    
}
