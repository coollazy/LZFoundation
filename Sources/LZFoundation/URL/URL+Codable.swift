import Foundation

public extension URL {
    func data() throws -> Data {
        try Data(contentsOf: self)
    }
}
