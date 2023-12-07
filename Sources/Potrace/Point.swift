class Point<T> {
    var x: T
    var y: T
    
    init(x: T, y: T) {
        self.x = x
        self.y = y
    }
    
    func copy() -> Point<T> {
        return Point<T>(x: self.x, y: self.y)
    }
    
    static func toPointF(point: PointI) -> PointF {
        return PointF(x: Double(point.x), y: Double(point.y))
    }
}

typealias PointF = Point<Double>
typealias PointI = Point<Int>
