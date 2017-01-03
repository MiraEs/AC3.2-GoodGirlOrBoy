//
//  BehaviorDetailViewController.swift
//  GoodGirlOrBoy
//
//  Created by Ilmira Estil on 1/1/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class BehaviorDetailViewController: UIViewController {

    @IBOutlet weak var addName: UITextField!
    @IBOutlet weak var naughtyOrNice: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    
    @IBAction func buttonTapped(_ sender: AnyObject) {
//        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
//        let behaviorEntry = BehaviorEntry(context: context)
//        behaviorEntry.name = addName.text!
//        behaviorEntry.status = naughtyOrNice.isOn
//        
//        //Save data
//        (UIApplication.shared.delegate as! AppDelegate).saveContext()
//        navigationController!.popViewController(animated: true)
    }

   

}
