struct Bitmap {
    var w: Int
    var h: Int
    var size: Int
    var data: [UInt8]

    init(width: Int, height: Int) {
        self.w = width
        self.h = height
        self.size = width * height
        self.data = [UInt8](repeating: 0, count: self.size)
    }
    
    func at(x: Int, y: Int) -> Bool {
        return (x >= 0 && x < self.w && y >= 0 && y < self.h) &&
            data[self.w * y + x] == 1
    }
    
    func index(i: Int) -> PointI {
        let point = PointI(x: 0, y: 0)
        point.y = Int(floor(Double(i / self.w)))
        point.x = i - point.y * self.w
        return point
    }
    
    mutating func flip(x: Int, y: Int) {
        if self.at(x: x, y: y) {
            data[self.w * y + x] = 0
        } else {
            data[self.w * y + x] = 1
        }
    }
    
    func copy() -> Bitmap {
        var bm = Bitmap(width: w, height: h)
        for (index, value) in data.enumerated() {
            bm.data[index] = value
        }
        return bm
    }
}
