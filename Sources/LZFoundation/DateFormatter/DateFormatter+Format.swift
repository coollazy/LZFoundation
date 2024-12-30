import Foundation

public extension DateFormatter {
    convenience init(format: String) {
        self.init()
        dateFormat = format
    }
}
