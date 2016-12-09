//
//  Whiteboard.swift
//  Board
//
//  Created by Daher Alfawares on 11/25/16.
//  Copyright © 2016 Daher Alfawares. All rights reserved.
//

import Foundation

public struct WhiteboardInfo : Info {
    private var boardItems : [String]
    private var boardTitle :  String
    
    public init(with dictionary:[String:AnyObject]){
        self.boardItems = dictionary["items"] as? [String] ?? []
        self.boardTitle = dictionary["title"] as? String ?? ""
    }
    public func encoded() -> [String:AnyObject] {
        return
            [
                "title" : boardTitle as AnyObject,
                "items" : boardItems as AnyObject
        ]
    }
    public mutating func items() -> [String] {
        return boardItems
    }
    public mutating func appendItem(with id:String){
        self.boardItems.append(id)
    }
    public mutating func removeItem(with id:String){
        if let index = boardItems.index(of: id) {
            boardItems.remove(at: index)
        }
    }
}
