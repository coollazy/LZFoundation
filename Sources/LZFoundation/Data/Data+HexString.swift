import Foundation

public extension Data {
    // Data 轉換為16進位字串
    var hexString: String {
        let hexString = map { String(format: "%02.2hhx", $0) }.joined()
        return hexString
    }
}
