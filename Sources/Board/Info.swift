//
//  Data.swift
//  Board
//
//  Created by Daher Alfawares on 11/25/16.
//  Copyright © 2016 Daher Alfawares. All rights reserved.
//

import Foundation

public protocol Info {
    init(with dictionary:[String:AnyObject])
    func encoded() -> [String:AnyObject]
}

