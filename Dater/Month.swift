//
//  Month.swift
//  Dater
//
//  Created by Matthew Lui on 13/2/2017.
//  Copyright © 2017 goldunderknees. All rights reserved.
//

import Foundation

public struct Month: IteratorDay {
  
  public var iterator: MonthIterator {
    return MonthIterator(index: self)
  }
  
  public var index: Int {
    return _index
  }
  
  var _index: Int
  private let dateFormatter = DateFormatter()
  
  public static let jan = Month(_index: 0)
  public static let feb = Month(_index: 1)
  public static let mar = Month(_index: 2)
  public static let apr = Month(_index: 3)
  public static let may = Month(_index: 4)
  public static let jun = Month(_index: 5)
  public static let jul = Month(_index: 6)
  public static let aug = Month(_index: 7)
  public static let sep = Month(_index: 8)
  public static let oct = Month(_index: 9)
  public static let nov = Month(_index: 10)
  public static let dec = Month(_index: 11)

  func shortString() -> String {
    return dateFormatter.shortMonthSymbols[index]
  }
  func fullString() -> String {
    return dateFormatter.monthSymbols[index]
  }
  func numericString() -> String {
    return dateFormatter.shortStandaloneMonthSymbols[index]
  }
}
