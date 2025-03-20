import Foundation

public extension String {
    var url: URL {
        URL(fileURLWithPath: self)
    }
    
    func toFileURL() -> URL {
        URL(fileURLWithPath: self)
    }
    
    func toRemoteURL() -> URL? {
        URL(string: self)
    }
    
    var pathComponents: [String] {
        url.pathComponents
    }
    
    var lastPathComponent: String {
        url.lastPathComponent
    }
    
    var pathExtension: String {
        url.pathExtension
    }
}

public extension String {
    func appendingPathComponent(_ pathComponent: String) -> String {
        url.appendingPathComponent(pathComponent).path
    }
    
    func deletingLastPathComponent() -> String {
        url.deletingLastPathComponent().path
    }
}

public extension String {
    func appendingPathExtension(_ pathExtension: String) -> String {
        url.appendingPathExtension(pathExtension).path
    }
    
    func deletingPathExtension() -> String {
        url.deletingPathExtension().path
    }
}
