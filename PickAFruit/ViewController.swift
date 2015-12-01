//
//  ViewController.swift
//  PickAFruit
//
//  Created by  Parvez shaikh on 11/28/15.
//  Copyright © 2015  Parvez shaikh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    
    //Creating an array which will populate our picker view
    var fruits = ["Pick a Fruits","Apple","Oranges","Lemon","Limes","Bluberries"]

    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var infoLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //On View Load
        imageView.image = UIImage(named: "fruits.jpg")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //Components in numbers of spinning wheel in picker view
    //In calendar app, there are 3 spinning wheel each for day, month and year
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        //We need only one component
        return 1
    }
    
    //This function asks for number of options
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return fruits.count
    }
    
    //Populate the picker view options using the array defined earlier
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fruits[row]
    }
    
    //Need to do something when particular row is selected i.e change the image view and label
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let fruitSelected = fruits[row]
        
        switch(fruitSelected) {
            case "Apple":
                imageView.image = UIImage(named: "apple.jpg")
                infoLabel.text = "These apples are red."
            
            case "Oranges":
                imageView.image = UIImage(named: "oranges.jpg")
                infoLabel.text = "These Oranges are orange in color."
            
            case "Lemon":
                imageView.image = UIImage(named: "lemon.jpg")
                infoLabel.text = "These Lemon are very sour."
        
            case "Limes":
                imageView.image = UIImage(named: "limes.jpg")
                infoLabel.text = "These limes are very sour and yet very teasty."
            
            case "Bluberries":
                imageView.image = UIImage(named: "blueberries.jpg")
                infoLabel.text = "These Bluberries are red."
            
            default:
                imageView.image = UIImage(named: "fruits.jpg")
                infoLabel.text = "Please enjoy some Fruit."
            
        } //end of switch statements
        
    }//end of did selectRow function
}

