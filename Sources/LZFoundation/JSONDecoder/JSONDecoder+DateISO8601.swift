import Foundation

public extension JSONDecoder {
    static var deferredToDate: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .deferredToDate
        return decoder
    }
    
    static var secondsSince1970: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        return decoder
    }
    
    static var millisecondsSince1970: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .millisecondsSince1970
        return decoder
    }
    
    // 針對時間欄位格式為 iso8601 的 JSONDecoder
    static var iso8601: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }
    
    static func formatted(_ dateFormat: String) -> JSONDecoder {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(dateFormatter)
        return decoder
    }
}
