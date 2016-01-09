//
//  QuotesViewController.swift
//  Quoter
//
//  Created by Avijeet Sachdev on 1/8/16.
//  Copyright © 2016 Avijeet Sachdev. All rights reserved.
//

import Foundation

struct Quote {
  let text: String
  let author: String

  static let all: [Quote] = [
    Quote(text: "There are no two words in the English language more harmful than 'good job'.", author: "Terence Fletcher, Whiplash"),
    Quote(text: "Never feast with those you didn't starve with.", author: "Don't Starve game"),
    Quote(text: "Arriving at one goal is the starting point to another.", author: "John Dewey"),
    Quote(text: "A creative man is motivated by the desire to achieve, not by the desire to beat others.", author: "Ayn Rand"),
    Quote(text: "It does not matter how slowly you go as long as you do not stop.", author: "Confuscious"),
    Quote(text: "Stay hungry, stay foolish.", author: "Steve Jobs")
  ]
}

// MARK: - Printable

extension Quote: CustomStringConvertible {
  var description: String {
    return "\"\(text)\" — \(author)"
  }
}