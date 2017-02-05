//
//  ViewController.swift
//  FunFacts
//
//  Created by David Jansson Hultgren on 2015-05-18.
//  Copyright (c) 2015 davloop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
  
     let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        var randomColor = colorWheel.randomColor()
        view.backgroundColor = colorWheel.randomColor()
        funFactButton.tintColor = colorWheel.randomColor()
        funFactLabel.text = factBook.randomFact()
       
    
    }

}

