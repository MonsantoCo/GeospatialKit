internal extension Array {
    var tail: Array? {
        let tail = Array(dropFirst())
        if tail.isEmpty { return nil }
        return tail
    }
    
    func isAccessible(at index: Int) -> Bool {
        return index >= 0 && index <= count - 1
    }
    
    func at(_ index: Int) -> Element? {
        return self.isAccessible(at: index) ? self[index] : nil
    }
}
