import Foundation

public extension Decimal {
    // 無條件捨去到指定的小數位數(decimal), 預設取到整數位
    func ceilValue(toDecimal decimal: Int = 0) -> Decimal {
        var original = self
        var result = Decimal()
        NSDecimalRound(&result, &original, decimal, .down)
        return result
    }
    
    // 四捨五入到指定的小數位數(decimal), 預設取到整數位
    func roundValue(toDecimal decimal: Int = 0) -> Decimal {
        var original = self
        var result = Decimal()
        NSDecimalRound(&result, &original, decimal, .plain)
        return result
    }

    // 無條件進位到指定的小數位數(decimal), 預設取到整數位
    func floorValue(toDecimal decimal: Int = 0) -> Decimal {
        var original = self
        var result = Decimal()
        NSDecimalRound(&result, &original, decimal, .up)
        return result
    }
}
