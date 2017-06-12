//  Write some awesome Swift code, or import libraries like "Foundation",
//  "Dispatch", or "Glibc"

import Foundation

func subStr (str:String?,strat:Int,len:Int) ->String{
	
	if len > 0 {
		if let str = str{
			let sLen = Int(strlen(str))
			let newstrat = strat > sLen ?sLen : strat
			let lenth = len > (sLen - newstrat) ? (sLen - newstrat) : len
			let Findex = str.index(str.startIndex,offsetBy:newstrat)
			let Eindex = str.index(str.startIndex,offsetBy:newstrat + lenth)
			return str[Findex..<Eindex]
		}else{
			return "" 
		}
	}else{
		if let str = str{
			let sLen = Int(strlen(str))
			let newstrat = strat > sLen ?sLen : strat
			let Snum = (newstrat+len) > 0 ? (newstrat+len) : 0
			let Eindex = str.index(str.startIndex,offsetBy:newstrat)
			let Findex = str.index(str.startIndex,offsetBy:Snum)
			return str[Findex..<Eindex]
		}else{
			return "" 
		}
	}
	
}


var str:String? = "123456"
// print(type(of:strlen(str ?? "")))

var a = subStr(str:str,strat:10,len:9)

print(a)