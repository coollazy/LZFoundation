import Foundation

fileprivate let extensionFormatter = DateFormatter()

public extension Date {
    // 用 string 初始化 Date, format 帶入日期的格式
    init(string: String, format: String = "yyyy-MM-dd HH:mm:ss") {
        self.init(timeIntervalSince1970: Date.from(string: string, format: format)?.timeIntervalSince1970 ?? Date().timeIntervalSince1970)
    }
    
    init(iso8601: String) {
        let formatter = DateFormatter(format: "yyyy-MM-dd'T'HH:mm:ss.SSSZ")
        self = formatter.date(from: iso8601) ?? Date()
    }
    
    static func from(string: String, format: String) -> Date? {
        extensionFormatter.locale = .current
        extensionFormatter.dateFormat = format
        return extensionFormatter.date(from: string)
    }
    
    func formatter(format: String) -> String {
        extensionFormatter.dateFormat = format
        return extensionFormatter.string(from: self)
    }
}
    
public extension Date {
    var yaer: String {
        extensionFormatter.dateFormat = "yyyy"
        return extensionFormatter.string(from: self)
    }
    
    var month: String {
        extensionFormatter.dateFormat = "MM"
        return extensionFormatter.string(from: self)
    }
    
    var day: String {
        extensionFormatter.dateFormat = "dd"
        return extensionFormatter.string(from: self)
    }
    
    var hour: String {
        extensionFormatter.dateFormat = "HH"
        return extensionFormatter.string(from: self)
    }
    
    var minute: String {
        extensionFormatter.dateFormat = "mm"
        return extensionFormatter.string(from: self)
    }
    
    var second: String {
        extensionFormatter.dateFormat = "ss"
        return extensionFormatter.string(from: self)
    }
}
