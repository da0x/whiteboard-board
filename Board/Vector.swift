//
//  Vector.swift
//  Math
//
//  Created by Daher Alfawares on 10/28/16.
//  Copyright © 2016 Daher Alfawares. All rights reserved.
//

import Foundation

open class Vector {
    public var x : Float
    public var y : Float
    
    public init(){
        x = 0
        y = 0
    }
    public init(x:Float,y:Float){
        self.x = x
        self.y = y
    }
    public init(point:CGPoint){
        x = Float(point.x)
        y = Float(point.y)
    }
    
    public init(size:CGSize){
        x = Float(size.width)
        y = Float(size.height)
    }
    
    public func asPoint() -> CGPoint {
        return CGPoint(x:CGFloat(x),y:CGFloat(y))
    }
    
    public func asSize() -> CGSize {
        return CGSize(width:CGFloat(x),height:CGFloat(y))
    }
}


public extension Vector {
    public static func + (left: Vector, right: Vector) -> Vector {
        return Vector(x: left.x + right.x, y: left.y + right.y)
    }
    public static func - (left: Vector, right: Vector) -> Vector {
        return Vector(x: left.x - right.x, y: left.y - right.y)
    }
    public static func * (left: Vector, right: Float) -> Vector {
        return Vector(x: left.x*right, y: left.y*right)
    }
    public static func / (left: Vector, right: Float) -> Vector {
        return Vector(x: left.x/right, y: left.y/right)
    }
}

public extension Vector {
    func description()->String {
        return "Vector (\(x),\(y))"
    }
}
