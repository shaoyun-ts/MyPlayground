//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello,playground"
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

var ss1 = [1,3,5,4,2,8,6,7,9,0]
let sort1 = ss1.sort(>)
sort1
ss1.append(100)
var ss2 = [10,20,30,40,50]
ss1 += ss2
ss2.insert(60, atIndex: 2)
ss1[11]

var s = 130223198010184618
let indexint = s.advancedBy(20, limit: 20)
print (indexint)
let strindex1 = str.startIndex.advancedBy(0)
let strindex2 = str.endIndex.advancedBy(-11)
var s00 = str.substringFromIndex(strindex1)
var s01 = str.substringToIndex(strindex2)
var ra = Range(start: strindex1, end: strindex2)
str.substringWithRange(ra)
var s2 = String(s)
let s03 = Int(s2)

let index = s2.startIndex.advancedBy(14) //swift 2.0+
let index2 = s2.endIndex.advancedBy(-12) //swift 2.0+
var range = Range<String.Index>(start: index2,end: index)

var s1:String=s2.substringFromIndex(index)
var s02:String=s2.substringToIndex(index2)
var s3=s2.substringWithRange(range)

print(s1)//67890
print(s2)//1234
print(s3)//5
UInt.max
UInt.min

var a3 = 0
var b3 = a3++
var c3 = a3++

func add(t:Int,g:Int) -> Int {
return t + g
}
add(233, g: -233)
