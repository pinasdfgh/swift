import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    
    var aR = A
    var aL = A
    
    for i in 1..<A.count{
        aR[i] += aR[i-1]
        let ri = A.count - i - 1
        aL[ri] += aL[ri+1]
    }
    
    var min = abs(aR[0] - aL[1])
    for i in 0 ..< A.count - 1{
        let temp = abs(aR[i] - aL[i+1])
        min = temp<min ? temp : min
    }
    
    // print(aL.self)
    
    return min
}