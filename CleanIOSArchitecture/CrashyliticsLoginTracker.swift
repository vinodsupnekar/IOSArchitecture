//
//  CrashyliticsLoginTracker.swift
//  CleanIOSArchitecture
//
//  Created by PlayerzPotMedia on 06/04/20.
//  Copyright © 2020 PlayerzPotMedia. All rights reserved.
//

import Foundation

class CrashyliticsLoginTracker: LoginUseCaseOutput {
  func loginSucceded() {
    // send login event to crashylitics
  }
  
  func loginFailed() {
     // send error event to crashylitics
  }
  
  
}
