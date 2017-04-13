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
            let snapped = Vector()
            snapped.x = roundUp(vector.x, toNearest: nearest)
            snapped.y = roundUp(vector.y, toNearest: nearest)
            return snapped
        }
        public func down() -> Vector {
            let snapped = Vector()
            snapped.x = roundDown(vector.x, toNearest: nearest)
            snapped.y = roundDown(vector.y, toNearest: nearest)
            return snapped
        }
        public func toClosestEdge() -> Vector {

            let x1 = roundUp(vector.x, toNearest: nearest)
            let x2 = roundDown(vector.x, toNearest: nearest)
            let y1 = roundUp(vector.y, toNearest: nearest)
            let y2 = roundDown(vector.y, toNearest: nearest)
            
            return Vector(
                x:closest( f1:x1, f2:x2, to:vector.x ),
                y:closest( f1:y1, f2:y2, to:vector.y )
            )
        }

        private func closest(f1:Float,f2:Float, to f:Float)-> Float {
            if abs(f - f1) < abs(f - f2){
                return f1
            } else {
                return f2
            }
        }
        private func roundDown(_ value: Float, toNearest: Float) -> Float {
            return floor(value / toNearest) * toNearest
        }
        
        private func roundUp(_ value: Float, toNearest: Float) -> Float {
            return ceil(value / toNearest) * toNearest
        }
    }
}
