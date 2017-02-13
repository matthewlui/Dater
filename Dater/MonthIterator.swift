//
//  MonthIterator.swift
//  Dater
//
//  Created by Matthew Lui on 13/2/2017.
//  Copyright © 2017 goldunderknees. All rights reserved.
//

import Foundation

public struct MonthIterator: IteratorProtocol {
  
  public var index: Month
  
  public mutating func next() -> Month? {
    if index._index < 11 {
      index._index += 1
    } else {
      index._index = 1
    }
    return index
  }
}
