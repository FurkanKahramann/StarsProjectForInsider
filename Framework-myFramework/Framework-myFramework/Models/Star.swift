//
//  Stars.swift
//  Framework-myFramework
//
//  Created by Furkan Kahraman on 31.07.2022.
//

import Foundation
public class Star {
    private var SizeValue = Enums.StarSizes.none
    private var ColorValue = Enums.StarColors.randomColor()
    private var BrightnessValue = Enums.StarBrightness.randomBrightness()
    
    init(size: Enums.StarSizes) {
        self.SizeValue = size
    }
    
    var Size: Enums.StarSizes {
        get { return SizeValue }
    }
    
    var Color: Enums.StarColors {
        get { return ColorValue }
    }
    
    var Brightness: Enums.StarBrightness {
        get { return BrightnessValue }
    }
    
    public func toString() -> String {
        return "Size: \(SizeValue) - Color: \(ColorValue) - Brightness: \(BrightnessValue)"
    }
}
