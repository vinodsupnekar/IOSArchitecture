//
//  LoginUseCaseFactoryTests.swift
//  CleanIOSArchitectureTests
//
//  Created by PlayerzPotMedia on 08/04/20.
//  Copyright © 2020 PlayerzPotMedia. All rights reserved.
//

import XCTest
@testable import CleanIOSArchitecture

class LoginUseCaseFactoryTests: XCTestCase {
  
  func test_createUseCase_hasComposedOutputs(){
  let sut = LoginUseCaseFactory()
     XCTAssertNotNil(sut)
  let useCase = sut.makeUseCase()
     XCTAssertNotNil(useCase)
    XCTAssertNotNil(useCase.output)
  let composer =  useCase.output as? LoginUseCaseOutputComposer
    
    XCTAssertNotNil(composer)
    
  }
}
