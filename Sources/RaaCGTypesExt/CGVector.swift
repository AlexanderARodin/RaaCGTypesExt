//
//  CGVector.swift
//  
//
//  Created by the Dragon on 26.02.2022.
//


import CoreGraphics

//	//	//	//	//	//	//	//
//	//	//	//	//	//	//	//

public extension
CGVector {
	static var identity:CGVector {CGVector(dx: 1, dy: 1)}
	//
	static func * (left: CGVector, right: CGVector) -> Double {
		(left.dx * right.dx) + (left.dy * right.dy)
	}
}

public extension
CGVector { // additive
	
	static func + (left: CGVector, right: CGVector) -> CGVector {
		CGVector( dx: left.dx + right.dx, dy: left.dy + right.dy)
	}
	static prefix func - (right: CGVector) -> CGVector {
		CGVector(dx: -right.dx, dy: -right.dy )
	}
	static func - (left: CGVector, right: CGVector) -> CGVector {
		left + (-right)
	}
}

public extension
CGVector { // mult
	
	static func * (left: Double, right: CGVector) -> CGVector {
		CGVector( dx: left * right.dx, dy: left * right.dy)
	}
	static func * (left: CGVector, right: Double) -> CGVector {
		right*left
	}
	static func / (left: CGVector, right: Double) -> CGVector {
		CGVector( dx: left.dx / right, dy: left.dy / right)
	}
}

