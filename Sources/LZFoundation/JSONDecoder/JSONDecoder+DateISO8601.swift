import Foundation

public extension JSONDecoder {
    // 針對時間欄位格式為 iso8601 的 JSONDecoder
    static var iso8601: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }
}
