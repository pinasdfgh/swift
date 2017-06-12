import Foundation

var guess:String? = "223"
var n = 3
var isWong = false
// print(guess ?? "")

var check:[Bool] = Array(repeating:false,count:10)
// print(check.self)
// var c:String = "123"
// print(Int(c))

//1.check guess is nil 無用單純為type
//2.check guess is real num
//3.check guess is no repeat


if let gus = guess {
	if var num = Int(gus) {
// 		print(num)
		for i in 0..<n{
			var index = num % (10)
			num /= 10
// 			print(index)
			isWong = check[index]
			check[index] = true
		}
	}else{
		isWong = true
	}
}else{
	isWong = true
}

print(isWong)