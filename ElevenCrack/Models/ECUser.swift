//
//  ECUser.swift
//  ElevenCrack
//
//  Created by Philip DesJean on 9/23/15.
//  Copyright © 2015 Philip DesJean. All rights reserved.
//

import UIKit

class ECUser: PFUser{
    @NSManaged var facebookId : String
    @NSManaged var firstName : String
    @NSManaged var lastName : String
    @NSManaged var name : String
    @NSManaged var image : PFFile
    @NSManaged var discoverable : Bool
    
    var gender : String {
        get { return self["gender"] as? String ?? "male"}
        set { self["gender"] = newValue }
    }
    
    var age : Int {
        get { return self["age"] as? Int ?? 25 }
        set { self["age"] = newValue }
    }
    
    var displayText : String {
        return "\(firstName), \(age)"
    }
}
