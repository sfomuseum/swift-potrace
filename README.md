# swift-potrace

A Swift package implementing the potrace algorithm. Potrace allows you to transform a bitmap into a smooth, scalable vector image.

## Background

This is a fork of the `Potrace` class from @pcolton 's [potrace](https://github.com/pcolton/potrace) iOS application that has been updated to use `CGMutablePath` rather than the iOS-specific `UIBezierPath` and to take as its input a CoreGraphics `CGImage` instance rather than rather bytes.

## Documentation

Documentation is incomplete at this time.

## Example

```
import CoreGraphics
import Potrace

// Load you CGImage as necessary here
var cg_image: CGImage

let potrace = try Potrace(image: cg_image)
potrace.process()
        
let svgString = potrace.getSVG()
print(svgString)
```

## Known-knowns

The `Potrace.swift` file produces an "initialization of 'UnsafeMutableRawPointer' results in a dangling pointer" warning that I am not sure how to deal with. I have chosen to live with it since [the original code that this package was derived from](https://github.com/pcolton/potrace) produces the same error. That's not really a very good reason but that is today's reason. Any suggestions or fixes would be welcome.

## See also

* https://github.com/pcolton/potrace