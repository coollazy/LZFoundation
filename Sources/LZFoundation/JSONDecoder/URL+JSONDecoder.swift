import Foundation

public extension URL {
    func jsonDecode<T>(_ type: T.Type, decoder: JSONDecoder = JSONDecoder()) throws -> T where T : Decodable {
        try Data(contentsOf: self).jsonDecode(type, decoder: decoder)
    }
}
