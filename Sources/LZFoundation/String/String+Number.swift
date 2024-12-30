import Foundation

// Int
public extension String {
    var int: Int? {
        Int(self)
    }
    
    var intValue: Int {
        int ?? 0
    }
}

// Float
public extension String {
    var float: Float? {
        Float(self)
    }
    
    var floatValue: Float {
        float ?? 0.0
    }
}

// Double
public extension String {
    var double: Double? {
        Double(self)
    }
    
    var doubleValue: Double {
        double ?? 0.0
    }
}

// Decimal
public extension String {
    var decimal: Decimal? {
        Decimal(string: self)
    }
    
    var decimalValue: Decimal {
        decimal ?? Decimal(0)
    }
}
