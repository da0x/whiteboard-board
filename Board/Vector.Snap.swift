//
//  Vector.Snap.swift
//  Math
//
//  Created by Daher Alfawares on 10/28/16.
//  Copyright © 2016 Daher Alfawares. All rights reserved.
//

import Foundation

extension Vector {
    
    open class Snap {
        private let vector:Vector
        private let nearest:Float
        
        public init(vector:Vector, to nearest:Float){
            self.vector = vector
            self.nearest = nearest
        }
        
        public func up() -> Vector {
            var snapped = Vector()
            snapped.x = roundUp(vector.x, toNearest: nearest)
            snapped.y = roundUp(vector.y, toNearest: nearest)
            return snapped
        }
        public func down() -> Vector {
            var snapped = Vector()
            snapped.x = roundDown(vector.x, toNearest: nearest)
            snapped.y = roundDown(vector.y, toNearest: nearest)
            return snapped
        }
        

        private func roundDown(_ value: Float, toNearest: Float) -> Float {
            return floor(value / toNearest) * toNearest
        }
        
        private func roundUp(_ value: Float, toNearest: Float) -> Float {
            return ceil(value / toNearest) * toNearest
        }
    }
}
