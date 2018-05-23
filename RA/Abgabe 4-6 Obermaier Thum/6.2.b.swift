#!/usr/bin/swift

let verbose = true

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

func smallestDouble(_ number: inout String) -> Double
{
    var smallest = 1.0
    while true
    {
        if let d = Double(number)
        {
            if 1.0 + d != 1.0
            {
                if verbose
                {
                    printDouble(d)
                }
                if abs(d) < abs(smallest)
                {
                    smallest = d
                }
            }
            let e = -d
            if 1.0 + e != 1.0
            {
                if verbose
                {
                    printDouble(d)
                }
                if abs(e) < abs(smallest)
                {
                    smallest = e
                }
            }
            number.insert("0", at: number.index(before: number.endIndex))
        }
        else
        {
            break
        }
    }
    return smallest
}

var numbers = ["0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9"]
var smallest = 1.0

for i in 0...numbers.count - 1
{
    let small = smallestDouble(&numbers[i])
    if abs(small) < abs(smallest)
    {
        smallest = small
    }
}

print("SMALLEST\n========")
printDouble(smallest)
