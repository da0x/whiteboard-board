//
//  Card.swift
//  Board
//
//  Created by Daher Alfawares on 11/5/16.
//  Copyright © 2016 Daher Alfawares. All rights reserved.
//

import Foundation


public protocol View : class {
    func update(value : Dictionary<String,Any>)
}

public protocol Database : class {
}

open class Card {
    private var Position = Vector()
    private var text = String()
    private weak var view : View?
    
    public init(view : View){
        self.view = view
    }
}
