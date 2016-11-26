//
//  Whiteboard.swift
//  Board
//
//  Created by Daher Alfawares on 11/25/16.
//  Copyright © 2016 Daher Alfawares. All rights reserved.
//

import Foundation

public struct WhiteboardInfo : Info {
    private var boardCards : [String]
    private var boardTitle :  String
    
    public init(with dictionary:[String:AnyObject]){
        self.boardCards = dictionary["cards"] as? [String] ?? []
        self.boardTitle = dictionary["title"] as? String ?? ""
    }
    public func encoded() -> [String:AnyObject] {
        return
            [
                "title" : boardTitle as AnyObject,
                "cards" : boardCards as AnyObject
        ]
    }
    public mutating func cards() -> [String] {
        return boardCards
    }
    public mutating func appendCard(with id:String){
        self.boardCards.append(id)
    }
}
