class BoxedArray<T> : MutableCollection {
    var array: [T]
    
    init() {
        self.array = [T]()
    }
    
    init(repeating: T, count: Int) {
        self.array = [T](repeating: repeating, count: count)
    }
    
    func index(after i: (Int)) -> (Int) {
        return array.index(after: i)
    }
    
    var endIndex: (Int) {
        return array.endIndex
    }
    
    var startIndex: (Int) {
        return array.startIndex
    }
    
    func append(_ item: T) {
        array.append(item)
    }
    
    subscript (index: Int) -> T {
        get { return array[index] }
        set(newValue) { array[index] = newValue }
    }
}
