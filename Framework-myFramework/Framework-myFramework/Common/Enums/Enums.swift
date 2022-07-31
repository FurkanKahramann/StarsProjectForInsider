//
//  Enums.swift
//  Framework-myFramework
//
//  Created by Furkan Kahraman on 31.07.2022.
//

import Foundation
class Enums {
    
    public enum StarSizes {
        case none
        case B
        case S
    }
    
    public enum StarColors {
        case Red
        case Blue
        case Green
        case Yellow
        case Purple
        case Gray
        
        static func randomColor() -> StarColors {
            let colorsToGetRandomly = [StarColors.Red, StarColors.Blue, StarColors.Green, StarColors.Yellow, StarColors.Purple, StarColors.Gray]
            let index = Int(arc4random_uniform(UInt32(colorsToGetRandomly.count)))
            let color = colorsToGetRandomly[index]
            return color
        }
    }
    
    public enum StarBrightness {
        case Bright
        case NotSoMuch
        
        static func randomBrightness() -> StarBrightness {
            let brightnessToGetRandomly = [StarBrightness.Bright, StarBrightness.NotSoMuch]
            let index = Int(arc4random_uniform(UInt32(brightnessToGetRandomly.count)))
            let color = brightnessToGetRandomly[index]
            return color
        }
    }
    
}
