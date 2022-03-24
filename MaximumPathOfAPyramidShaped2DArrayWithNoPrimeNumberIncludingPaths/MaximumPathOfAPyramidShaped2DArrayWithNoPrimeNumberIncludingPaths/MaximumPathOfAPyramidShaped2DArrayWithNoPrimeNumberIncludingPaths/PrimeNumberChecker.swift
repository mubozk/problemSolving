//
//  PrimeNumberChecker.swift
//  MaximumPathOfAPyramidShaped2DArrayWithNoPrimeNumberIncludingPaths
//
//  Created by Muhammet BOZKURT on 24.03.2022.
//

import Foundation

func primeChecker (valueFromArray: Int) -> Bool {
    
    // starting at 5 because spesific values like 1, 2, 3 will be pre determined
    var counter = 5
    // 1 is not a prime number so we cut that value out
    if valueFromArray == 1 {
        return false
    }
    // 2 & 3 are the first prime numbers and we shouldn't add them to the main
    // prime checking operation for spesific statements
    if (valueFromArray == 2 || valueFromArray == 3) {
        return true
    }
    // we dont want to get the multiplied values of the smalles prime numbers
    // It will result as less calculations for the computer to handle
    if ( valueFromArray % 2 == 0 || valueFromArray % 3 == 0 ){
        return false
    }
    // Sqrt of the valueFromArray is our desired destination to for checking
    // all the dividers
    // checking at the first statement of the if and checking the 2 added values
    // again because we want to consider all values like 11 -> 13 that both are prime
    while ( counter * counter ) < valueFromArray {
        if ( valueFromArray % counter == 0 || valueFromArray % ( counter + 2 ) == 0 ) {
            return false
        }
        counter = counter + 6
    }

    return true
    
}
