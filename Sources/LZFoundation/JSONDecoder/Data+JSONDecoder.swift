import Foundation

public extension Data {
    func jsonDecode<T>(_ type: T.Type, decoder: JSONDecoder = JSONDecoder()) throws -> T where T : Decodable {
        try decoder.decode(type, from: self) as T
    }
}
