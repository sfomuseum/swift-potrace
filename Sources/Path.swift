class Path {
    var area: Int
    var len: Int
    var curve: Curve
    var pt: BoxedArray<PointI>
    var minX: Int
    var minY: Int
    var maxX: Int
    var maxY: Int
    var sign: String
    var sums: BoxedArray<Sum>
    var lon: [Int]
    var po: [Int]
    var m: Int
    var x0: Int
    var y0: Int
    
    init() {
        self.area = 0
        self.len = 0
        self.curve = Curve(n: 0)
        self.pt = BoxedArray()
        self.minX = 100000
        self.minY = 100000
        self.maxX = -1
        self.maxY = -1
        self.sign = ""
        self.sums = BoxedArray()
        self.lon = []
        self.po = []
        self.m = 0
        self.x0 = 0
        self.y0 = 0
    }
}
