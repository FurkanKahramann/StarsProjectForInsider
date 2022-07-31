//
//  FrameworkViewModel.swift
//  Framework-myFramework
//
//  Created by Furkan Kahraman on 31.07.2022.
//

import Foundation
public class FrameworkViewModel {
    
    private var stars = [Star]()
    
    public func getUrl(urlString: String?, completion: @escaping (_ isSuccess: Bool, _ url: NSURL?, _ message: String) -> ()){
        if let urlString = urlString {
            if let url = NSURL(string: urlString){
                if(urlString.hasPrefix("http://") || urlString.hasPrefix("https://")){
                    completion(true, url, "Valid URL")
                    return
                }
            }
        }
        completion(false, nil, "Not Valid URL")
        
    }
    
    public func appendStar(star: Star, completion: @escaping (_ isSuccess: Bool, _ message: String, _ stars: [Star]) -> ()){
        if(stars.count < Constants.starsCount){
            stars.append(star)
            completion(true, "Success", stars)
        } else {
            completion(false, "Sky is full", stars)
        }
    }
    
    public func toStringAndBrightCount(stars: [Star]){
        var brightnessCount = 0
        for i in 0..<stars.count {
            print("\(i). \(stars[i].toString())")
            if(stars[i].Brightness == Enums.StarBrightness.Bright){
                brightnessCount += 1
            }
        }
        print("Bright star count is \(brightnessCount)")
    }
    
}
