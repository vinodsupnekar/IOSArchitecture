//
//  LoginUseCaseOutputComposer.swift
//  CleanIOSArchitecture
//
//  Created by PlayerzPotMedia on 08/04/20.
//  Copyright © 2020 PlayerzPotMedia. All rights reserved.
//

import Foundation

final class LoginUseCaseOutputComposer: LoginUseCaseOutput{
  var outputs: [LoginUseCaseOutput]
  
  init(_ out: [LoginUseCaseOutput]) {
    self.outputs = out
  }
  
  func loginSucceded() {
//    outputs.first?.loginSucceded()
    outputs.forEach { (loginObject) in
      loginObject.loginSucceded()
    }
  }
  
  func loginFailed() {
//    outputs.first?.loginFailed()
    outputs.forEach { (object) in
      object.loginFailed()
    }
  }
  
  
}
