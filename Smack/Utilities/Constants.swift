//
//  Constants.swift
//  Smack
//
//  Created by Kunal Tyagi on 11/11/17.
//  Copyright © 2017 Kunal Tyagi. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool)-> ()

let BASE_URL = "https://smackchatserver.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"

//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

//User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
