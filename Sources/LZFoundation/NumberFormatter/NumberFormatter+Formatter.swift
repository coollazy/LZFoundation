import Foundation

public extension NumberFormatter {
    class func formatter(prefix: String = "", suffix: String = "", numberOfDecimal: Int = 0, minimumFractionDigits: Int = 0) -> NumberFormatter {
        let formatter = NumberFormatter()
        var format = prefix + "###,###"
        if numberOfDecimal > 0 {
            format += "."
            for _ in 0 ..< numberOfDecimal {
                format += "#"
            }
        }
        format += suffix
        formatter.positiveFormat = format
        formatter.minimumFractionDigits = minimumFractionDigits
        return formatter
    }
    
    class func formatter(from: NSNumber, prefix: String = "", suffix: String = "", numberOfDecimal: Int = 0, minimumFractionDigits: Int = 0) -> String? {
        NumberFormatter.formatter(prefix: prefix, suffix: suffix, numberOfDecimal: numberOfDecimal, minimumFractionDigits: minimumFractionDigits).string(from: from)
    }
}
