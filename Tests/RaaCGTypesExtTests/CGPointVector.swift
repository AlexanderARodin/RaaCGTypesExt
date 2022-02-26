//
//  CGPointVector.swift
//
//
//  Created by the Dragon on 26.02.2022.
//

import XCTest

@testable import RaaCGTypesExt

//	//	//	//	//	//	//	//
//	//	//	//	//	//	//	//



class CGPointVector: XCTestCase {

	func testBasic() throws {
		let iden: CGPoint = .identity
		XCTAssert(iden.x == 1 && iden.y == 1)
	}
	func testSum_1() throws {
		for x1 in 0...10 {
			for y1 in 0...10 {
				for x2 in 0...10 {
					for y2 in 0...10 {
						let a = CGPoint(x: Double(x1), y: Double(y1))
						let b = CGVector(dx: Double(x2), dy: Double(y2))
						let c = a+b
						XCTAssert(c.x == a.x+b.dx)
						XCTAssert(c.y == a.y+b.dy)
					}
				}
			}
		}
	}
	func testSum_2() throws {
		for x1 in 0...10 {
			for y1 in 0...10 {
				for x2 in 0...10 {
					for y2 in 0...10 {
						let a = CGPoint(x: Double(x1), y: Double(y1))
						let b = CGVector(dx: Double(x2), dy: Double(y2))
						let c = b+a
						XCTAssert(c.x == a.x+b.dx)
						XCTAssert(c.y == a.y+b.dy)
					}
				}
			}
		}
	}
	func testNeg() throws {
		for x1 in 0...10 {
			for y1 in 0...10 {
				let a = CGPoint(x: Double(x1), y: Double(y1))
				let c = -a
				XCTAssert(c.x == -a.x)
				XCTAssert(c.y == -a.y)
			}
		}
	}
	func testRes_1() throws {
		for x1 in 0...10 {
			for y1 in 0...10 {
				for x2 in 0...10 {
					for y2 in 0...10 {
						let a = CGPoint(x: Double(x1), y: Double(y1))
						let b = CGVector(dx: Double(x2), dy: Double(y2))
						let c = a-b
						XCTAssert(c.x == a.x-b.dx)
						XCTAssert(c.y == a.y-b.dy)
					}
				}
			}
		}
	}
	func testRes_2() throws {
		for x1 in 0...10 {
			for y1 in 0...10 {
				for x2 in 0...10 {
					for y2 in 0...10 {
						let a = CGPoint(x: Double(x1), y: Double(y1))
						let b = CGVector(dx: Double(x2), dy: Double(y2))
						let c = b-a
						XCTAssert(c.x == b.dx-a.x)
						XCTAssert(c.y == b.dy-a.y)
					}
				}
			}
		}
	}
	func testAddEq() throws {
		for x1 in 0...10 {
			for y1 in 0...10 {
				for x2 in 0...10 {
					for y2 in 0...10 {
						var a = CGPoint(x: Double(x1), y: Double(y1))
						let b = CGVector(dx: Double(x2), dy: Double(y2))
						a += b
						XCTAssert(a.x == Double(x1+x2))
						XCTAssert(a.y == Double(y1+y2))
					}
				}
			}
		}
	}
	func testResEq() throws {
		for x1 in 0...10 {
			for y1 in 0...10 {
				for x2 in 0...10 {
					for y2 in 0...10 {
						var a = CGPoint(x: Double(x1), y: Double(y1))
						let b = CGVector(dx: Double(x2), dy: Double(y2))
						a -= b
						XCTAssert(a.x == Double(x1-x2))
						XCTAssert(a.y == Double(y1-y2))
					}
				}
			}
		}
	}
}
