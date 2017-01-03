//
//  AddChildViewController.swift
//  GoodGirlOrBoy
//
//  Created by Ilmira Estil on 1/2/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class AddChildViewController: UIViewController {
    
    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var childName: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addName(_ sender: UIButton) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let child = Child(context: context)
        child.name = childName.text!
        
        //Save data
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    }
 
}
