import CoreGraphics

extension Double {
    func toFixed(_ places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}

extension CGImage {

    func pixelData() -> [UInt8]? {
            var width = 0
            var height = 0
            var pixelValues: [UInt8]?

            let imageRef = self
                width = imageRef.width
                height = imageRef.height
                let bitsPerComponent = imageRef.bitsPerComponent
                let bytesPerRow = imageRef.bytesPerRow
                let totalBytes = height * bytesPerRow
                let bitmapInfo = imageRef.bitmapInfo

                let colorSpace = CGColorSpaceCreateDeviceRGB()
                var intensities = [UInt8](repeating: 0, count: totalBytes)

                let contextRef = CGContext(data: &intensities,
                                          width: width,
                                         height: height,
                               bitsPerComponent: bitsPerComponent,
                                    bytesPerRow: bytesPerRow,
                                          space: colorSpace,
                                     bitmapInfo: bitmapInfo.rawValue)
                contextRef?.draw(imageRef, in: CGRect(x: 0.0, y: 0.0, width: CGFloat(width), height: CGFloat(height)))

                pixelValues = intensities

            return pixelValues
    }
}
