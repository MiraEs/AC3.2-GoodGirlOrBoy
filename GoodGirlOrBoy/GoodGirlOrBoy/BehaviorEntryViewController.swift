//
//  BehaviorEntryViewController.swift
//  GoodGirlOrBoy
//
//  Created by Ilmira Estil on 1/2/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class BehaviorEntryViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var childName: UITextField!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var goodOrBadSwitch: UISwitch!
    @IBOutlet weak var switchLabel: UILabel!
    var addBehavior = ""
    var pickerBadBehaviors = [
        "Throwing",
        "Running in the house",
        "Hitting",
        "Biting"
    ]
    var pickerGoodBehaviors = [
        "Sharing",
        "Clearing the table",
        "Finishing Dinner",
        "Saying thank you",
        "Apologizing",
        "Doing homework"
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.greetingLabel.text = "blah"
       
    }
    
    @IBAction func goodOrBadSwitch(_ sender: UISwitch) {
        if !goodOrBadSwitch.isOn {
            print("Is off")
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerBadBehaviors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        addBehavior = pickerBadBehaviors[row]
        return pickerBadBehaviors[row]
    }
 
    
    @IBAction func saveButton(_ sender: AnyObject) {
                let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
                let behaviorEntry = Child(context: context)
                 behaviorEntry.behavior = addBehavior
        
                //Save data
                (UIApplication.shared.delegate as! AppDelegate).saveContext()
                navigationController!.popViewController(animated: true)
        print("saved data \(addBehavior)")

    }

   

}
