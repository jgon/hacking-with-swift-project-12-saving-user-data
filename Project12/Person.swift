//
//  Person.swift
//  Project12
//
//  Created by Jacques on 12/02/16.
//  Copyright © 2016 J4SOFT. All rights reserved.
//

import UIKit

class Person: NSObject, NSCoding {

    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
    required init(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObjectForKey("name") as! String
        image = aDecoder.decodeObjectForKey("image") as! String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder = aCoder.encodeObject(name, forKey: "name")
        aCoder = aCoder.encodeObject(image, forKey: "image")
    }
}
