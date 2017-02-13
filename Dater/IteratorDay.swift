//
//  IteratorDay.swift
//  Dater
//
//  Created by Matthew Lui on 13/2/2017.
//  Copyright © 2017 goldunderknees. All rights reserved.
//

import Foundation

protocol IteratorDay {
  
  associatedtype Iterator = IteratorProtocol
  var index: Int { get }
  var iterator: Iterator { get }
  
  func shortString() -> String
  func fullString() -> String
  func numericString() -> String
  
}
