//
//  CGVectorONLYTest.swift
//  
//
//  Created by the Dragon on 26.02.2022.
//

import XCTest

@testable import RaaCGTypesExt

//	//	//	//	//	//	//	//
//	//	//	//	//	//	//	//



class CGVectorONLYTest: XCTestCase {
	
	func testBasic() throws {
		let iden: CGVector = .identity
		XCTAssert(iden.dx == 1 && iden.dy == 1)
	}
	func testScalar() throws {
		for x1 in 0...10 {
			for y1 in 0...10 {
				for x2 in 0...10 {
					for y2 in 0...10 {
						let a = CGVector(dx: Double(x1), dy: Double(y1))
						let b = CGVector(dx: Double(x2), dy: Double(y2))
						let c = a*b
						XCTAssert(c == Double(x1*x2 + y1*y2))
					}
				}
			}
		}
	}
	func testSum() throws {
		for x1 in 0...10 {
			for y1 in 0...10 {
				for x2 in 0...10 {
					for y2 in 0...10 {
						let a = CGVector(dx: Double(x1), dy: Double(y1))
						let b = CGVector(dx: Double(x2), dy: Double(y2))
						let c = a+b
						XCTAssert(c.dx == a.dx+b.dx)
						XCTAssert(c.dy == a.dy+b.dy)
					}
				}
			}
		}
	}
	func testNeg() throws {
		for x1 in 0...10 {
			for y1 in 0...10 {
						let a = CGVector(dx: Double(x1), dy: Double(y1))
						let c = -a
						XCTAssert(c.dx == -a.dx)
						XCTAssert(c.dy == -a.dy)
			}
		}
	}
	func testRes() throws {
		for x1 in 0...10 {
			for y1 in 0...10 {
				for x2 in 0...10 {
					for y2 in 0...10 {
						let a = CGVector(dx: Double(x1), dy: Double(y1))
						let b = CGVector(dx: Double(x2), dy: Double(y2))
						let c = a-b
						XCTAssert(c.dx == a.dx-b.dx)
						XCTAssert(c.dy == a.dy-b.dy)
					}
				}
			}
		}
	}
	func testMult_1() throws {
		for x1 in 0...10 {
			for y1 in 0...10 {
				for k in 0...10 {
					let a = CGVector(dx: Double(x1), dy: Double(y1))
					let c = Double(k) * a
					XCTAssert(c.dx == Double(k) * a.dx)
					XCTAssert(c.dy == Double(k) * a.dy)
				}
			}
		}
	}
	func testDiv() throws {
		for x1 in 0...10 {
			for y1 in 0...10 {
				for k in 1...10 {
					let a = CGVector(dx: Double(x1), dy: Double(y1))
					let c = a / Double(k)
					XCTAssert(c.dx == a.dx / Double(k))
					XCTAssert(c.dy == a.dy / Double(k))
				}
			}
		}
	}
}
