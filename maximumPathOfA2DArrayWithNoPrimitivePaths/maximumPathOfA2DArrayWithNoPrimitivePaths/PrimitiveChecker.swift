//
//  PrimitiveChecker.swift
//  maximumPathOfA2DArrayWithNoPrimitivePaths
//
//  Created by Muhammet BOZKURT on 23.03.2022.
//

import Foundation

func primitiveChecker (valueFromArray: Int) -> Bool {

    var counter = 5

    if valueFromArray == 1 {
        return false
    }
    if (valueFromArray == 2 || valueFromArray == 3) {
        return true
    }

    while ( counter * counter ) < valueFromArray {
        if ( valueFromArray % counter == 0 || valueFromArray % ( counter + 2 ) == 0 ) {
            return false
        }
        counter = counter + 6
    }

    return true
    
}







//RAW FORCE////////////////////////////////////////////////////////////////
//    var counter = 5
//    if valueFromArray == 1 {
//        return false
//    }
//    if ( valueFromArray == 2 || valueFromArray == 3 ) {
//        return true
//    }
//    while counter < valueFromArray {
//        if valueFromArray % counter == 0 {
//            return false
//        }
//        counter = counter + 1
//    }
//    return true
//RAW FORCE///////////////////////////////////////////////////////////////
