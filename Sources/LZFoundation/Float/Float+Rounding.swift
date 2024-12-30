import Foundation

public extension Float {
    // 無條件捨去到指定的小數位數(decimal), 預設取到整數位
    func ceilValue(toDecimal decimal: Int = 0) -> Float {
        Float(Double(self).ceilValue(toDecimal: decimal))
    }
    
    // 四捨五入到指定的小數位數(decimal), 預設取到整數位
    func roundValue(toDecimal decimal: Int = 0) -> Float {
        Float(Double(self).roundValue(toDecimal: decimal))
    }

    // 無條件進位到指定的小數位數(decimal), 預設取到整數位
    func floorValue(toDecimal decimal: Int = 0) -> Float {
        Float(Double(self).floorValue(toDecimal: decimal))
    }
}
