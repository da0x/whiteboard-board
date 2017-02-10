//
//  ImageInfo.swift
//  Board
//
//  Created by Daher Alfawares on 11/5/16.
//  Copyright © 2016 Daher Alfawares. All rights reserved.
//

import Foundation


public struct ImageInfo : Info {
    private var dataValue = ""
    
    public init(with value:[String:AnyObject]){
        dataValue = value["data"] as? String ?? ""
    }
    
    public mutating func set(data: String){
        self.dataValue = data
    }
    
    public func data() -> String {
        return self.dataValue
    }
    
    public func encoded() -> [String:AnyObject] {
        return [
            "data": dataValue as AnyObject,
            "type": "pdf" as AnyObject,
        ]
    }
}

