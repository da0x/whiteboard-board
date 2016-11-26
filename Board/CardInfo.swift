//
//  Card.swift
//  Board
//
//  Created by Daher Alfawares on 11/5/16.
//  Copyright © 2016 Daher Alfawares. All rights reserved.
//

import Foundation


public struct CardInfo : Info {
    public var t = ""
    public var x = Float(0)
    public var y = Float(0)
    
    public init(with value:[String:AnyObject]){
        t = String( value["t"] as? String ?? ""  ) ?? ""
        x = Float ( value["x"] as? String ?? "0" ) ?? 0
        y = Float ( value["y"] as? String ?? "0" ) ?? 0
    }
    
    public func encoded() -> [String:AnyObject] {
        return [
            "t": t as AnyObject,
            "x": String(x) as AnyObject,
            "y": String(y) as AnyObject
        ]
    }
}

