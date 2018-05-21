#!/usr/bin/swift

extension String
{
    func leftPadding(toLength: Int, withPad character: Character) -> String
    {
        let stringLength = self.count
        if stringLength < toLength
        {
            return String(repeatElement(character, count: toLength - stringLength)) + self
        }
        else
        {
            return String(self.suffix(toLength))
        }
    }
}

func printDouble(_ d: Double)
{
    print(d)
    let bitPattern = d.bitPattern
    let binary = String(bitPattern, radix: 2).leftPadding(toLength: 64, withPad: "0")
    print(binary)
    print()
}



var num1 = "0.1"
var num2 = "0.2"
var num3 = "0.3"
var num4 = "0.4"
var num5 = "0.5"
var num6 = "0.6"
var num7 = "0.7"
var num8 = "0.8"
var num9 = "0.9"

while true
{
    if let d = Double(num1)
    {
        printDouble(d)
        num1.insert("0", at: num1.index(before: num1.endIndex))
    }
    else
    {
        break
    }
    if let d = Double(num2)
    {
        printDouble(d)
        num2.insert("0", at: num2.index(before: num2.endIndex))
    }
    else
    {
        break
    }
    if let d = Double(num3)
    {
        printDouble(d)
        num3.insert("0", at: num3.index(before: num3.endIndex))
    }
    else
    {
        break
    }
    if let d = Double(num4)
    {
        printDouble(d)
        num4.insert("0", at: num4.index(before: num4.endIndex))
    }
    else
    {
        break
    }
    if let d = Double(num5)
    {
        printDouble(d)
        num5.insert("0", at: num5.index(before: num5.endIndex))
    }
    else
    {
        break
    }
    if let d = Double(num6)
    {
        printDouble(d)
        num6.insert("0", at: num6.index(before: num6.endIndex))
    }
    else
    {
        break
    }
    if let d = Double(num7)
    {
        printDouble(d)
        num7.insert("0", at: num7.index(before: num7.endIndex))
    }
    else
    {
        break
    }
    if let d = Double(num8)
    {
        printDouble(d)
        num8.insert("0", at: num8.index(before: num8.endIndex))
    }
    else
    {
        break
    }
    if let d = Double(num9)
    {
        printDouble(d)
        num9.insert("0", at: num9.index(before: num9.endIndex))
    }
    else
    {
        break
    }
}
