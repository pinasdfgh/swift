import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    // write your code in Swift 3.0 (Linux)
   
    let AL = A.count
    if AL < 2{
    return A
    }
    let time = AL - K % AL
 
    // return A
    // print(Mirror(reflecting: A))	
    var First = A[time ..< A.endIndex]
    let Last = A[0 ..< time]
    
    First.append(contentsOf:Last)
	
	//Arrar 使用subscript(Range<Int>)方法出現的型態是ArraySlice =>mean 資料還是原本的Array只有指標轉換,so 值取不出來
    
	//可用以下func將ArraySlice轉成Array
    func tArray<T: Sequence>(numbers: T) -> [Int] where T.Iterator.Element == Int {
     var tArray:[Int] = []
     for num in numbers {
          tArray.append(num)
     }
     return tArray
    }
    
    let rs = tArray(numbers:First) 
    
    
    return rs
}