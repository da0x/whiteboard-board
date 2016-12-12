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
    public var l = "Card"
    
    public init(with value:[String:AnyObject]){
        t = String( value["t"] as? String ?? "" ) ?? ""
        l = String( value["l"] as? String ?? "" ) ?? ""
    }
    
    public func encoded() -> [String:AnyObject] {
        return [
            "t": t as AnyObject,
            "l": l as AnyObject
        ]
    }
}

