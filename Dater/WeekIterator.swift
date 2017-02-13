//
//  WeekIterator.swift
//  Dater
//
//  Created by Matthew Lui on 13/2/2017.
//  Copyright © 2017 goldunderknees. All rights reserved.
//

import Foundation

public struct WeekdayIterator: IteratorProtocol {
  
  public var index: Weekday
  
  public mutating func next() -> Weekday? {
    if index._index < 6 {
      index._index += 1
    } else {
      index._index = 0
    }
    return index
  }
}
