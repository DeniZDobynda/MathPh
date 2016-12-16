//
//  DemoURL.swift
//  MathPh
//
//  Created by Denis Dobynda on 12/16/16.
//  Copyright © 2016 Denis Dobynda. All rights reserved.
//

import Foundation

class DemoURL {
    
    static var image1: NSURL {
        get {
            return pathForImage("1")!
        }
    }
    //imagePath("1")//Bundle.main.url(forResource: "1", withExtension: "jpg")!.absoluteString
    
    static func pathForImage(_ forName: String?) -> NSURL? {
        return NSURL(string:Bundle.main.url(forResource: forName, withExtension: "jpg")!.absoluteString)
    }
    
    static let MF = [
        "Канонічний другий" : "Images/1.png",
        "Канонічний третій" : "Images/2.png"
    ]

    static func MFImageNamed(imageName: String?) -> NSURL? {
        if let urlstring = MF[imageName ?? ""] {
            return NSURL(string: urlstring)
        } else {
            return nil
        }
    }
    
}
