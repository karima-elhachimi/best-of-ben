//
//  ViewController.swift
//  ben quotes
//
//  Created by Karima on 19/06/2018.
//  Copyright © 2018 Karima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblQuote: UILabel!
    
    var rdmIndex : Int = 0;
    let benQuotes = ["Ik denk dat ik echt wel epic ben.",
                     "Sorry, door de pet kan je mijn wenkbrauwen niet goed zien!",
                     "Ik heb al 8 uur luistertijd op mijn radio.",
                     "He, denken jullie dat ik een goeie papa ga zijn?",
                     "Awel ja, ik geniet van een beetje het softcore porn aspect.",
                     "Alles voor vleesmolens, toch?"];
    
    func generateQuote() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func quoteButtonPressed(_ sender: UIButton) {
    }


}

