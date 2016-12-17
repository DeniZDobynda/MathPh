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
    
    static func pathForImage(_ forName: String?) -> NSURL? {
        return NSURL(string:Bundle.main.url(forResource: forName, withExtension: "jpg")!.absoluteString)
    }
    
}
