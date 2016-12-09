//
//  Card.swift
//  Board
//
//  Created by Daher Alfawares on 11/5/16.
//  Copyright © 2016 Daher Alfawares. All rights reserved.
//

import Foundation


public struct ItemInfo : Info {
    public var x = Float(0)
    public var y = Float(0)
    public var w = Float(0)
    public var h = Float(0)
    
    public init(with value:[String:AnyObject]){
        x = Float ( value["x"] as? String ?? "0" ) ?? 0
        y = Float ( value["y"] as? String ?? "0" ) ?? 0
        w = Float ( value["w"] as? String ?? "0" ) ?? 0
        h = Float ( value["h"] as? String ?? "0" ) ?? 0
    }
    
    public func encoded() -> [String:AnyObject] {
        return [
            "x": String(x) as AnyObject,
            "y": String(y) as AnyObject,
            "w": String(w) as AnyObject,
            "h": String(h) as AnyObject
        ]
    }
}

