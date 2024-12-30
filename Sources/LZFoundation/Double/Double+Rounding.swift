import Foundation

public extension Double {
    // 無條件捨去到指定的小數位數(decimal), 預設取到整數位
    func ceilValue(toDecimal decimal: Int = 0) -> Double {
        let numberOfDigits = pow(10.0, Double(decimal))
        return (self * numberOfDigits).rounded(.awayFromZero) / numberOfDigits
    }
    
    // 四捨五入到指定的小數位數(decimal), 預設取到整數位
    func roundValue(toDecimal decimal: Int = 0) -> Double {
        let numberOfDigits = pow(10.0, Double(decimal))
        return (self * numberOfDigits).rounded() / numberOfDigits
    }

    // 無條件進位到指定的小數位數(decimal), 預設取到整數位
    func floorValue(toDecimal decimal: Int = 0) -> Double {
        let numberOfDigits = pow(10.0, Double(decimal))
        return (self * numberOfDigits).rounded(.towardZero) / numberOfDigits
    }
}
