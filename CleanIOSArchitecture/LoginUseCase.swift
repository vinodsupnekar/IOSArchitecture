//
//  LoginUseCase.swift
//  CleanIOSArchitecture
//
//  Created by PlayerzPotMedia on 06/04/20.
//  Copyright © 2020 PlayerzPotMedia. All rights reserved.
//

import Foundation

protocol LoginUseCaseOutput{
  func loginSucceded()
  func loginFailed()
}

class LoginUseCase {
  
  let output: LoginUseCaseOutput
  
  init(outputs: LoginUseCaseOutput) {
    self.output = outputs
  }
  
  func login(name: String,password: String) {
//    output.forEach { (object) in
      output.loginSucceded()
//    }
//
//    output.forEach { (object) in
//      object.loginFailed()
//    }
    
  }
}
