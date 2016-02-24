//: Swift language extensions.

import UIKit

extension Int {
    // Non mutating function
//    func plusOne() -> Int {
//        return self + 1
//    }
    
    // Mutating function
    mutating func plusOne() {
        return self += 1
    }

    // Declaring a static method on type Int.
    static func random(min min: Int, max: Int) -> Int {
        if max < min { return min }
        return Int(arc4random_uniform(UInt32((max - min) + 1))) + min
    }
}

var value = 10
value.plusOne()
value // Still has 10 with non mutating function else 11 with mutating function.

// Forcing external parameter name for the min parameter by doubling the parameter name:

Int.random(min: 0, max: 10)
