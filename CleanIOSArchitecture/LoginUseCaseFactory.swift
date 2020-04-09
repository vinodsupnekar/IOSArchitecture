//
//  LoginUseCaseFactory.swift
//  CleanIOSArchitecture
//
//  Created by PlayerzPotMedia on 08/04/20.
//  Copyright © 2020 PlayerzPotMedia. All rights reserved.
//

import Foundation

final class LoginUseCaseFactory {
  func makeUseCase() -> LoginUseCase {
    return LoginUseCase(outputs: LoginUseCaseOutputComposer([LoginPresenter(),CrashyliticsLoginTracker(),FirebaseLoginTracker()]))
  }
}
