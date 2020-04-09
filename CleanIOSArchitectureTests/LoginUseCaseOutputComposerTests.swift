//
//  LoginUseCaseOutputComposerTests.swift
//  CleanIOSArchitectureTests
//
//  Created by PlayerzPotMedia on 08/04/20.
//  Copyright © 2020 PlayerzPotMedia. All rights reserved.
//

import XCTest

class LoginUseCaseOutputComposerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
  
  func test_composingZeroOutputs_doenotCrash(){
    let sut = LoginUseCaseOutputComposer([])
    sut.loginFailed()
    sut.loginSucceded()
  }
  
//  func test_composingOneOutput_delegateSucceededMessage() {
//    let output1 = LoginUseCaseOutputSpy()
//    let sut = LoginUseCaseOutputComposer([output1])
////    sut.loginSucceded()
//    sut.loginSucceded()
//    sut.loginFailed()
//
//    XCTAssertEqual(output1.loginSuccessCount, 1)
//    XCTAssertEqual(output1.loginFasilureCount, 1)
//}
  
   func test_composingMultipleOutput_delegateSucceededMessage() {
      let output1 = LoginUseCaseOutputSpy()
      let output2 = LoginUseCaseOutputSpy()

      let sut = LoginUseCaseOutputComposer([output1,output2])
//      sut.loginSucceded()
      sut.loginSucceded()
      sut.loginFailed()
    
      XCTAssertEqual(output1.loginSuccessCount, 1)
      XCTAssertEqual(output1.loginFasilureCount, 1)
    
      XCTAssertEqual(output2.loginSuccessCount, 1)
      XCTAssertEqual(output2.loginFasilureCount, 1)
  }
  
  
  
  
  
   
  private class LoginUseCaseOutputSpy:LoginUseCaseOutput{
    var loginSuccessCount = 0
    var loginFasilureCount = 0
    
    func loginSucceded() {
      loginSuccessCount += 1
    }
    
    func loginFailed() {
      loginFasilureCount += 1
    }
    
  }

}
