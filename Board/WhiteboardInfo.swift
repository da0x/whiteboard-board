//
//  Whiteboard.swift
//  Board
//
//  Created by Daher Alfawares on 11/25/16.
//  Copyright © 2016 Daher Alfawares. All rights reserved.
//

import Foundation

public struct WhiteboardInfo : Info {
    private var boardTitle :  String
    private var boardItems : [String]
    private var boardTypes : [String:String]
    
    public init(with dictionary:[String:AnyObject]){
        self.boardTitle = dictionary["title"] as? String ?? ""
        self.boardItems = dictionary["items"] as? [String] ?? []
        self.boardTypes = dictionary["types"] as? [String:String] ?? [:]
    }
    public func encoded() -> [String:AnyObject] {
        return [
            "title" : boardTitle as AnyObject,
            "items" : boardItems as AnyObject,
            "types" : boardTypes as AnyObject,
        ]
    }
    public mutating func items() -> [String] {
        return boardItems
    }
    public mutating func types() -> [String:String] {
        return boardTypes
    }
    public mutating func appendItem(with id:String, type: String){
        self.boardItems.append(id)
        self.boardTypes[id] = type
    }
    
    public mutating func removeItem(with id:String){
        if let index = boardItems.index(of: id){
            boardItems.remove(at: index)
        }
        
        if let index = boardTypes.index(forKey: id) {
            boardTypes.remove(at: index)
        }
    }
}

