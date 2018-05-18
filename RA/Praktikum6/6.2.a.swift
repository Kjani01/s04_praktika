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



var num = "0.1"

while true
{
    if let d = Double(num)
    {
        printDouble(d)
        num.insert("0", at: num.index(before: num.endIndex))
    }
    else
    {
        break
    }
}
