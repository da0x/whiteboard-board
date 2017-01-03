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
    private var boardCards : [String]
    private var boardTexts  : [String]
    
    public init(with dictionary:[String:AnyObject]){
        self.boardTitle = dictionary["title"] as? String ?? ""
        self.boardItems = dictionary["items"] as? [String] ?? []
        self.boardCards = dictionary["cards"] as? [String] ?? []
        self.boardTexts = dictionary["texts"] as? [String] ?? []
    }
    public func encoded() -> [String:AnyObject] {
        return
        [
            "title" : boardTitle as AnyObject,
            "items" : boardItems as AnyObject,
            "cards" : boardCards as AnyObject,
            "texts" : boardTexts as AnyObject
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
    
    
    public func cards() -> [String] {
        return boardCards
    }
    
    public func texts() -> [String] {
        return boardTexts
    }
    
}
