class Curve {
    var n: Int
    var tag: [String]
    var c: BoxedArray<PointF>
    var alphacurve: Int
    var vertex: BoxedArray<PointF>
    var alpha: [Double]
    var alpha0: [Double]
    var beta: [Double]
    
    init(n: Int) {
        self.n = n
        self.tag = [String](repeating: "", count: n)
        self.c = BoxedArray(repeating: Point(x: 0.0, y: 0.0), count: n * 3)
        self.alphacurve = 0
        self.vertex = BoxedArray(repeating: Point(x: 0.0, y: 0.0), count: n)
        self.alpha = [Double](repeating: 0.0, count: n)
        self.alpha0 = [Double](repeating: 0.0, count: n)
        self.beta = [Double](repeating: 0.0, count: n)
    }
}
