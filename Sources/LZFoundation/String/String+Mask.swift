extension String {
    public func mask(_ symbol: String, offset: Int, fixedCount: Int? = nil) -> String {
        guard offset >= 0, offset <= count else {
            return self
        }
        guard (fixedCount ?? 0) >= 0 else {
            return self
        }
        guard offset * 2 < count else {
            let maskedSymbol = String(repeating: symbol, count: min(fixedCount ?? Int.max, (count - offset)))
            return "\(prefix(offset))\(maskedSymbol)"
        }
        let maskedSymbol = String(repeating: symbol, count: min(fixedCount ?? Int.max, (count - offset * 2)))
        return "\(prefix(offset))\(maskedSymbol)\(suffix(offset))"
    }
}
