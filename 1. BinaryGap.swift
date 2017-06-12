import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ N : Int) -> Int {
    // write your code in Swift 3.0 (Linux)
    var number = N
    var count = 0
    var zcount = 0
    var first:Bool = false
    
    while number > 0 {
        // print(number % 2)
        if number % 2 == 1 {
            first = true
        }
        if number % 2 == 1 && first{
            zcount = zcount > count ? zcount : count
            count = 0
        }else if first {
            count += 1
            // print(count)
        }
        number /= 2 
    }

    
    return zcount
    
}