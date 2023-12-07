
   
   /*
    *  Potrace.Settings
    *
    *        turnpolicy ("black" / "white" / "left" / "right" / "minority" / "majority")
    *          how to resolve ambiguities in path decomposition. (default: "minority")
    *
    *        turdsize
    *          suppress speckles of up to this size (default: 2)
    *
    *        optcurve (true / false)
    *          turn on/off curve optimization (default: true)
    *
    *        alphamax
    *          corner threshold parameter (default: 1)
    *
    *        opttolerance
    *          curve optimization tolerance (default: 0.2)
    */
   
   public struct Settings {
       var turnpolicy: String
       var turdsize: Int
       var optcurve: Bool
       var alphamax: Double
       var opttolerance: Double
       
       public init(turnPolicy: String = "minority",
            turdSize: Int = 2,
            optCurve: Bool = true,
            alphaMax: Double = 1.0,
            optTolerance: Double = 0.2) {
           
           self.turnpolicy = turnPolicy
           self.turdsize = turdSize
           self.optcurve = optCurve
           self.alphamax = alphaMax
           self.opttolerance = optTolerance
       }
   }
