//
//  Weekday.swift
//  Dater
//
//  Created by Matthew Lui on 13/2/2017.
//  Copyright © 2017 goldunderknees. All rights reserved.
//

import Foundation

public struct Weekday: IteratorDay {
  
  public var iterator: WeekdayIterator {
    return WeekdayIterator(index: self)
  }
  
  public var index: Int { return _index }
  
  var _index: Int
  private let dateFormatter = DateFormatter()
  
  public static let sunday = Weekday(_index: 0)
  public static let monday = Weekday(_index: 1)
  public static let tuesday = Weekday(_index: 2)
  public static let wednesday = Weekday(_index: 3)
  public static let thursday = Weekday(_index: 4)
  public static let friday = Weekday(_index: 5)
  public static let saturday = Weekday(_index: 6)
  
  public func shortString() -> String {
    return dateFormatter.shortWeekdaySymbols[index]
  }
  public func fullString() -> String {
    return dateFormatter.weekdaySymbols[index]
  }
  // A Weekday in not suppose to have a numeric value so it always return empty string
  public func numericString() -> String {
    return ""
  }
  
}
