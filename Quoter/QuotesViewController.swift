//
//  QuotesViewController.swift
//  Quoter
//
//  Created by Avijeet Sachdev on 1/8/16.
//  Copyright © 2016 Avijeet Sachdev. All rights reserved.
//

import Cocoa

class QuotesViewController: NSViewController {
    @IBOutlet var textLabel: NSTextField!
    
    let quotes = Quote.all
    
    var currentQuoteIndex: Int = 0 {
        didSet {
            updateQuote()
        }
    }
    
    func updateQuote() {
        textLabel.stringValue = String(quotes[currentQuoteIndex])
    }
    
    override func viewWillAppear() {
        super.viewWillAppear()
        
        currentQuoteIndex = 0
    }
}

// MARK: Actions

extension QuotesViewController {
    @IBAction func goLeft(sender: NSButton) {
        currentQuoteIndex = (currentQuoteIndex - 1 + quotes.count) % quotes.count
    }
    
    @IBAction func goRight(sender: NSButton) {
        currentQuoteIndex = (currentQuoteIndex + 1) % quotes.count
    }
    
    @IBAction func quit(sender: NSButton) {
        NSApplication.sharedApplication().terminate(sender)
    }
}
