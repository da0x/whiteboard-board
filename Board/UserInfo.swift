//
//  UserInfo.swift
//  Board
//
//  Created by Daher Alfawares on 11/5/16.
//  Copyright © 2016 Daher Alfawares. All rights reserved.
//

import Foundation

public struct UserInfo : Info {
    public enum UserType : String {
        case local  = "local"
        case google = "google"
    }
    
    private var name      : String
    private var type      : UserType
    private var boardList : [String]
    
    public init(with dictionary:[String:AnyObject]){
        self.name      = dictionary["name"] as? String ?? ""
        self.boardList = dictionary["boards"] as? [String] ?? []
        self.type      = dictionary["type"] as? UserType ?? UserType.local
    }
    public func encoded() -> [String:AnyObject] {
        return [
            "name"   : name as AnyObject,
            "boards" : boardList as AnyObject,
            "type"   : type.rawValue as AnyObject
        ]
    }
    public mutating func boards() -> [String] {
        return boardList
    }
    public mutating func appendItem(with id:String){
        self.boardList.append(id)
    }
    public mutating func merge(boards:[String]){
        let currentSet = Set(boardList)
        let newSet     = Set(boards)
        
        self.boardList = Array<String>(currentSet.union(newSet))
    }
    public mutating func removeItem(with id:String){
        if let index = boardList.index(of: id){
            boardList.remove(at: index)
        }
    }
    public mutating func set(name: String){
        self.name = name
    }
    public mutating func set(type: UserType){
        self.type = type
    }
    
    public func userType() -> UserType { return self.type }
    public func userName() -> String { return self.name }
}

