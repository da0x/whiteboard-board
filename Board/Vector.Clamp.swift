//
//  Vector.Clamp.swift
//  Math
//
//  Created by Daher Alfawares on 10/28/16.
//  Copyright © 2016 Daher Alfawares. All rights reserved.
//

import Foundation

extension Vector {
    
    open class Clamp {
        private let origin:Vector
        private let size:Vector
        private let parentFrameSize:Vector
        
        public init(origin:Vector,size:Vector,parentFrameSize:Vector){
            self.origin = origin
            self.size = size
            self.parentFrameSize = parentFrameSize
        }
        
        public func location() -> Vector {
            let v = origin
            let s = dimensions()
            if v.x < 0 {
                v.x = 0
            }
            if v.x > parentFrameSize.x - s.x {
                v.x = parentFrameSize.x - s.x
            }
            if v.y < 0 {
                v.y = 0
            }
            if v.y > parentFrameSize.y - s.y {
                v.y = parentFrameSize.y - s.y
            }
            return v
        }
        
        public func dimensions() -> Vector {
            let s = size
            if s.x > parentFrameSize.x {
                s.x = parentFrameSize.x
            }
            if s.y > parentFrameSize.y {
                s.y = parentFrameSize.y
            }
            return s
        }
    }
}
