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
    @IBOutlet weak var imageAchtergrond: UIImageView!
    
    var rdmIndex : Int = 0;
    var rdmImageIndex : Int = 0;
    let achtergronden = [ #imageLiteral(resourceName: "achtergrond1"), #imageLiteral(resourceName: "achtergrond2") , #imageLiteral(resourceName: "achtergrond3"), #imageLiteral(resourceName: "achtergrond4")]
    let fileURL = Bundle.main.path(forResource: "quotes.csv", ofType: "csv")
   
    
    let benQuotes = Quote().quotes;
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        genRdmIndex()
        lblQuote.adjustsFontSizeToFitWidth = true;
        lblQuote.adjustsFontForContentSizeCategory = true;
        
    }
    
    func parseCSV() {
     
    }
    func genRdmIndex() {
        rdmIndex = Int(arc4random_uniform(UInt32(benQuotes.count)));
        rdmImageIndex = Int(arc4random_uniform(UInt32(achtergronden.count)));
    }
    
    func generateQuote() {
        genRdmIndex()
        imageAchtergrond.image = achtergronden[rdmImageIndex]
        
        lblQuote.text = benQuotes[rdmIndex];
    }
    
    
    

  
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func quoteButtonPressed(_ sender: UIButton) {
        generateQuote()
    }


}

