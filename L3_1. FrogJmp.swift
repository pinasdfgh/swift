import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    // write your code in Swift 3.0 (Linux)
    return (Y - X) % D == 0 ? (Y - X)/D :(Y - X)/D + 1
}