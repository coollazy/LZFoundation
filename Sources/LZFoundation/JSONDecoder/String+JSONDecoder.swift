import Foundation

public extension String {
    enum JSONDecoderError: Error {
        case notFoundInBundle
        case notFoundInDocument
        case jsonStringToDataFailed
        case decodeFailed
    }
    
    func jsonFileInDocumentDecode<T>(_ type: T.Type, decoder: JSONDecoder = JSONDecoder()) throws -> T where T : Decodable {
        guard let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent(self) else {
            throw JSONDecoderError.notFoundInDocument
        }
        guard FileManager.default.fileExists(atPath: url.path) else {
            throw JSONDecoderError.notFoundInDocument
        }
        guard let obj = try? url.jsonDecode(type, decoder: decoder) else {
            throw JSONDecoderError.decodeFailed
        }
        return obj
    }
    
    func jsonBundleDecode<T>(_ type: T.Type, bundle: Bundle = Bundle.main, decoder: JSONDecoder = JSONDecoder()) throws -> T where T : Decodable {
        guard let url = bundle.url(forResource: self, withExtension: nil) else {
            throw JSONDecoderError.notFoundInBundle
        }
        guard let obj = try? url.jsonDecode(type, decoder: decoder) else {
            throw JSONDecoderError.decodeFailed
        }
        return obj
    }
    
    func jsonStringDecode<T>(_ type: T.Type, decoder: JSONDecoder = JSONDecoder()) throws -> T where T : Decodable {
        guard let data = data(using: .utf8) else {
            throw JSONDecoderError.jsonStringToDataFailed
        }
        return try data.jsonDecode(type, decoder: decoder)
    }
}
