//
//  UserInfo.swift
//  Board
//
//  Created by Daher Alfawares on 11/5/16.
//  Copyright © 2016 Daher Alfawares. All rights reserved.
//

import Foundation

public struct UserInfo : Info {
    
    private var name        : String
    private var type        : String
    private var boardList   : [String]
    private var archiveList : [String]
    
    public init(with dictionary:[String:AnyObject]){
        self.name          = dictionary["name"] as? String ?? ""
        self.boardList     = dictionary["boards"] as? [String] ?? []
        self.archiveList   = dictionary["archive"] as? [String] ?? []
        self.type          = dictionary["type"] as? String ?? "local"
    }
    public func encoded() -> [String:AnyObject] {
        return [
            "name"    : name as AnyObject,
            "boards"  : boardList as AnyObject,
            "archive" : archiveList as AnyObject,
            "type"    : type as AnyObject,
        ]
    }
    public func boards() -> [String] {
        return boardList
    }
    public mutating func appendItem(with id:String, titled title:String){
        self.boardList.append(id)
    }
    public mutating func archiveItem(with id: String){
        self.removeItem(with: id)
        self.archiveList.append(id)
    }
    public mutating func merge(boards:[String]){
        let set1 = Set(boardList)
        let set2 = Set(boards)
        
        self.boardList = Array(set1.union(set2))
    }
    public mutating func removeItem(with id:String){
        if let index = boardList.index(of: id){
            boardList.remove(at: index)
        }
    }
    public mutating func set(name: String){
        self.name = name
    }
    public mutating func set(type: String){
        self.type = type
    }
    
    public func userType() -> String { return self.type }
    public func userName() -> String { return self.name }
}

