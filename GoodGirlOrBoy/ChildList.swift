//
//  BehaviorTableViewController.swift
//  GoodGirlOrBoy
//
//  Created by Ilmira Estil on 1/1/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class ChildList: UITableViewController {
    var children: [Child] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Naughty or Nice List"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getData()
        tableView.reloadData()
    }
    
    func getData() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do {
            children = try context.fetch(Child.fetchRequest())
        } catch {
            print("Fetching failed")
        }
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return children.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "kidCell", for: indexPath)
        let child = children[indexPath.row]
        cell.textLabel?.text = child.name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        if editingStyle == .delete {
            let child = children[indexPath.row]
            context.delete(child)
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            do {
                children = try context.fetch(Child.fetchRequest())
            } catch {
                print("Fetching Failed")
            }
        }
        tableView.reloadData()
    }
    
    
    
}
