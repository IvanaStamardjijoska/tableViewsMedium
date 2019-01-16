//
//  ViewController.swift
//  tableViewsMedium
//
//  Created by CodeWell on 1/16/19.
//  Copyright © 2019 Ivana Stamardjioska. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let nameArray = ["Cat", "Dog", "Dragon","Cat", "Dog", "Dragon","Cat", "Dog", "Dragon","Cat", "Dog", "Dragon","Cat", "Dog", "Dragon","Cat", "Dog", "Dragon"]
    let descriptionArray = [
        "Likes chasing mice","Likes chasing cats","Likes eating cats and dogs","Likes chasing mice","Likes chasing cats","Likes eating cats and dogs","Likes chasing mice","Likes chasing cats","Likes eating cats and dogs","Likes chasing mice","Likes chasing cats","Likes eating cats and dogs","Likes chasing mice","Likes chasing cats","Likes eating cats and dogs","Likes chasing mice","Likes chasing cats","Likes eating cats and dogs"]
    let imageArray = ["Cat-100","Dog-100","Dragon-100","Cat-100","Dog-100","Dragon-100","Cat-100","Dog-100","Dragon-100","Cat-100","Dog-100","Dragon-100","Cat-100","Dog-100","Dragon-100","Cat-100","Dog-100","Dragon-100"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        let imageView : UIImageView = cell.viewWithTag(10) as! UIImageView
        let name : UILabel = cell.viewWithTag(20) as! UILabel
        let description : UILabel = cell.viewWithTag(30) as! UILabel
        imageView.image = UIImage(named: imageArray[indexPath.row])
        name.text = nameArray[indexPath.row]
        description.text = descriptionArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("User just selected: \(nameArray[indexPath.row])")
        
        let defaults = UserDefaults.standard
        defaults.set(imageArray[indexPath.row], forKey: "imageName")
        
        
        performSegue(withIdentifier: "mySegue", sender: self)
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    }




