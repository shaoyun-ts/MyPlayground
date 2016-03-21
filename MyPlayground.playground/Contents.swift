//: Playground - noun: a place where people can play

import Cocoa

/*
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
*/

//提取身份证信息
func nyr(身份证信息:String) ->(String,String,String,String,String,Int) {
    身份证信息.characters.count    //计算字符串长度
    let 性别范围 = Range(start: 身份证信息.startIndex.advancedBy(16),end: 身份证信息.endIndex.advancedBy(-1))
    let 性别 = 身份证信息.substringWithRange(性别范围)
    Int(性别)
    let 地区 = 身份证信息.substringToIndex(身份证信息.endIndex.advancedBy(-12))
    Int(地区)
    let 出生日期范围 = Range(start: 身份证信息.endIndex.advancedBy(-12),end: 身份证信息.startIndex.advancedBy(14))
    let 出生日期 = 身份证信息.substringWithRange(出生日期范围)
//    let 年范围 = Range(start:出生日期.startIndex.advancedBy(0),end: 出生日期.endIndex.advancedBy(-4))
    let 年 = 出生日期.substringWithRange(Range(start:出生日期.startIndex.advancedBy(0),end: 出生日期.endIndex.advancedBy(-4)))
    let 月 = 出生日期.substringWithRange(Range(start:出生日期.startIndex.advancedBy(4),end: 出生日期.endIndex.advancedBy(-2)))
    let 日 = 出生日期.substringWithRange(Range(start:出生日期.startIndex.advancedBy(6),end: 出生日期.endIndex.advancedBy(0)))
            Int(年)
            Int(月)
            Int(日)
    let rq = "出生日期:" + (年) + "年" + (月) + "月" + (日) + "日"
            print(rq)
    let datefor = NSDateFormatter()
        datefor.dateFormat = "yyyy"                //设置日期格式
//    let 出生年 = datefor.dateFromString(年)!  //身份证中的年份字符型转换为NSData类型
    let now = NSDate()                        //获取当前日期
    let nowStr = datefor.stringFromDate(now)  //转换当前日期为字符型
    let nowStrInt = Int(nowStr)               //将字符型年转换为整数型
    let 年龄 = (nowStrInt! - (Int(年))!) + 1   //计算年龄
        print(年龄)
return (地区,年,月,日,性别,年龄)
}
let years = "130223198010184618"
    nyr(years).0
    nyr(years).1
    nyr(years).2
    nyr(years).3
    nyr(years).4
    nyr(years).5
//提取结束

//生肖计算开始
func shengxiao(year:Int) ->Int{
let offset = 4 % 12
return (year - offset) % 12
}
var 生肖 = shengxiao(Int(nyr(years).1)!)
var sx = ""
switch 生肖{
    case 0 :
        sx = "鼠"
    case 1 :
        sx = "牛"
    case 2 :
        sx = "虎"
    case 3 :
        sx = "兔"
    case 4 :
        sx = "龙"
    case 5 :
        sx = "蛇"
    case 6 :
        sx = "马"
    case 7 :
        sx = "羊"
    case 8 :
        sx = "猴"
    case 9 :
        sx = "鸡"
    case 10 :
        sx = "狗"
    case 11 :
        sx = "猪"
    default:
        sx = "未输入信息"
}
//生肖计算完毕
print("年龄：\(nyr(years).5)" + "     " + "生肖：\(sx)")

/*
UInt.max
UInt.min

var a3 = 0
var b3 = a3++
var c3 = a3++

func add(t:Int,g:Int) -> Int {
return t + g
}
add(233, g: -233)
*/

