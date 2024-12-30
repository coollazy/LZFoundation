import Foundation

public extension Data {
    // Data 轉換為utf8編碼字串
    var utf8String: String? {
        return String(data: self, encoding: .utf8)
    }
}
