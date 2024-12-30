import Foundation

public extension Int {
    func format(prefix: String = "", suffix: String = "", decimal: Int = 2, minDigits: Int = 0) -> String? {
        NumberFormatter.formatter(from: self as NSNumber, prefix: prefix, suffix: suffix, numberOfDecimal: decimal, minimumFractionDigits: minDigits)
    }
}
