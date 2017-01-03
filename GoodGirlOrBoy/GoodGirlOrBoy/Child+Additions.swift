//
//  Child+Additions.swift
//  GoodGirlOrBoy
//
//  Created by Ilmira Estil on 1/3/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation

extension Child {
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        time = NSDate()
    }
    
    public override func prepareForDeletion() {
        super.prepareForDeletion()
        print("Deleting object \(self)")
    }
    
    var localizedDescription: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        let string = formatter.string(from: time! as Date)
        return "☕️ \(string)"
    }
}
