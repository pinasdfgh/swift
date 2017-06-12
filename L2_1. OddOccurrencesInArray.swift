import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    // print(A.description)             =>swift 3.0 印出所有
    // print(A.self)					=>swift 2.0 印出所有
    // print(Mirror(reflecting: A))		=>swift 2.0 == swift type(of: A)
    var rs:Int = 0
    for cur in A{
    rs ^= cur
    }
    
    return rs
}