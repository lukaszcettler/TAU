//
//  Project6Tests.swift
//  Project6Tests
//
//  Created by Łukasz Cettler on 27/01/2023.
//

import XCTest
@testable import Project6

final class Project6Tests: XCTestCase {
    
    //    override func setUpWithError() throws {
    //        // Put setup code here. This method is called before the invocation of each test method in the class.
    //    }
    //
    //    override func tearDownWithError() throws {
    //        // Put teardown code here. This method is called after the invocation of each test method in the class.
    //    }
    //
    //    func testExample() throws {
    //        // This is an example of a functional test case.
    //        // Use XCTAssert and related functions to verify your tests produce the correct results.
    //        // Any test you write for XCTest can be annotated as throws and async.
    //        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
    //        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    //    }
    //
    //    func testPerformanceExample() throws {
    //        // This is an example of a performance test case.
    //        self.measure {
    //            // Put the code you want to measure the time of here.
    //        }
    //    }
    
    var gameLogic: GameLogic!
    var scene: GameScene!
    
    override func setUp() {
        super.setUp()
        scene = GameScene()
        gameLogic = GameLogic(scene: scene, numRows: 20, numCols: 20)
    }
    
    func testInitGame() {
        gameLogic.initGame()
        XCTAssertEqual(gameLogic.playerPositions.count, 3)
        XCTAssertEqual(gameLogic.playerPositions[0], Point(10, 10))
        XCTAssertEqual(gameLogic.playerPositions[1], Point(10, 11))
        XCTAssertEqual(gameLogic.playerPositions[2], Point(10, 12))
        XCTAssertEqual(gameLogic.playerDirection, PlayerDirection.LEFT)
    }
    
    func testUpdate() {
        gameLogic.initGame()
        gameLogic.update(time: 0)
        XCTAssertEqual(gameLogic.playerPositions[0], Point(9, 10))
        XCTAssertEqual(gameLogic.playerPositions[1], Point(10, 10))
        XCTAssertEqual(gameLogic.playerPositions[2], Point(10, 11))
    }
    
    func testChangeDirection() {
        gameLogic.initGame()
        gameLogic.changeDirection(.UP)
        XCTAssertEqual(gameLogic.playerDirection, PlayerDirection.UP)
        gameLogic.changeDirection(.LEFT)
        XCTAssertEqual(gameLogic.playerDirection, PlayerDirection.UP)
    }
    
    func testChangeDirection2() {
        gameLogic.initGame()
        gameLogic.changeDirection(.UP)
        XCTAssertEqual(gameLogic.playerDirection, PlayerDirection.UP)
        gameLogic.changeDirection(.RIGHT)
        XCTAssertEqual(gameLogic.playerDirection, PlayerDirection.RIGHT)
    }
    
    func testCheckForScore() {
        gameLogic.initGame()
        gameLogic.scorePos = Point(10, 10)
        gameLogic.checkForScore()
        XCTAssertEqual(gameLogic.currentScore, 1)
        XCTAssertEqual(gameLogic.playerPositions.count, 6)
    }
    
    func testCheckPlayerDied() {
        gameLogic.initGame()
        gameLogic.playerPositions = [Point(10, 10), Point(10, 11), Point(10, 12), Point(10, 13), Point(10, 14), Point(10, 15)]
        gameLogic.playerDirection = .UP
        gameLogic.update(time: 0)
        XCTAssertEqual(gameLogic.playerDirection, PlayerDirection.DIED)
        XCTAssertEqual(gameLogic.playerPositions.count, 5)
    }
    
    func testMoveLeft() {
        let expectedX = -1.0
        let movement = Movement()
        movement.moveLeft()
        XCTAssertEqual(expectedX, movement.x)
    }
    
    func testMoveRight() {
        let expectedX = 1.0
        let movement = Movement()
        movement.moveRight()
        XCTAssertEqual(expectedX, movement.x)
    }
    
    func testMoveUp() {
        let expectedY = 1.0
        let movement = Movement()
        movement.moveUp()
        XCTAssertEqual(expectedY, movement.y)
    }
    
    func testMoveDown() {
        let expectedY = -1.0
        let movement = Movement()
        movement.moveDown()
        XCTAssertEqual(expectedY, movement.y)
    }
    
}
