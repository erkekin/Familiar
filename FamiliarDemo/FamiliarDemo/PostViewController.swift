//
//  PostViewController.swift
//  FamiliarDemo
//
//  Created by ICterra on 12/08/2017.
//  Copyright © 2017 Erk Ekin. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {
    struct FacebookPost {
        
        static let allLikes = ["Darwin", "Newton", "Einstein", "Hawking", "Dawkins", "Ahmet Şık"]
        static let myFriendsWhoLike = ["Darwin", "Can Dündar", "Einstein"]
        static let postData = UIImage(named: "post")!
        
    }
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = Familiar(items: FacebookPost.allLikes, familiarItems: FacebookPost.myFriendsWhoLike, maxFamiliarCount: 2).text
    
    }

}
