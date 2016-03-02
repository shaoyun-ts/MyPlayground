//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
var date = str + "!"
date
let a = 1
let b = 2
if a > b  {
    print("a > b")
}
    else
{
    print("a != b")
}
var x:Bool? = true
x!
var c = x!
var d = !c
!c
let j = (f : 1,g : 2,e : 3)
j.f
j.e
j.g
let (i,o,p)=(0,9,8)
i
o
p
1...100
for x in 1...100
{
    print(x, separator: "", terminator: ",")
}
//print (date)

let ss1 = [1,3,5,4,2,8,6,7,9,0]
let sort1 = ss1.sort(>)
sort1

var s="130223198010184618"

let index = s.startIndex.advancedBy(14) //swift 2.0+
let index2 = s.endIndex.advancedBy(-12) //swift 2.0+
var range = Range<String.Index>(start: index2,end: index)

var s1:String=s.substringFromIndex(index)
var s2:String=s.substringToIndex(index2)
var s3=s.substringWithRange(range)

print(s1)//67890
print(s2)//1234
print(s3)//5
UInt.max
UInt.min


