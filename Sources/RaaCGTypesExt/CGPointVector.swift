//
//  CGPoint.swift
//
//
//  Created by the Dragon on 26.02.2022.
//


import CoreGraphics

//	//	//	//	//	//	//	//
//	//	//	//	//	//	//	//

public extension
CGPoint {
	static var identity:CGPoint {CGPoint(x: 1, y: 1)}
	//
}

public extension
CGPoint { // additive
	
	static func + (left: CGPoint, right: CGVector) -> CGPoint {
		CGPoint( x: left.x + right.dx, y: left.y + right.dy)
	}
	static func + (left: CGVector, right: CGPoint) -> CGPoint {
		right + left
	}

	static prefix func - (right: CGPoint) -> CGPoint {
		CGPoint(x: -right.x, y: -right.y )
	}
	static func - (left: CGVector, right: CGPoint) -> CGPoint {
		left + (-right)
	}
	static func - (left: CGPoint, right: CGVector) -> CGPoint {
		left + (-right)
	}

	static func += (left: inout CGPoint, right: CGVector) {
		left = left + right
	}
	static func -= (left: inout CGPoint, right: CGVector) {
		left = left - right
	}
}

//public extension
//CGVector { // mult
//	
//	static func * (left: Double, right: CGVector) -> CGVector {
//		CGVector( dx: left * right.dx, dy: left * right.dy)
//	}
//	static func * (left: CGVector, right: Double) -> CGVector {
//		right*left
//	}
//	static func / (left: CGVector, right: Double) -> CGVector {
//		CGVector( dx: left.dx / right, dy: left.dy / right)
//	}
//}
//
