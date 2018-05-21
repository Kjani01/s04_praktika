#!/usr/bin/swift

var num = "0.1"

while true
{
    if let d = Double(num)
    {
        if 1.0 + d != 1.0
        {
            print(d)
        }
        num.insert("0", at: num.index(before: num.endIndex))
    }
    else
    {
        break
    }
}
