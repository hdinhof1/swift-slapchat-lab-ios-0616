//
//  AddViewController.swift
//  SlapChat
//
//  Created by Henry Dinhofer on 7/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import CoreData

class AddViewController: UIViewController {

    let dataStore = DataStore.sharedDataStore
    
    @IBOutlet weak var textField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveButtonTapped(sender: AnyObject) {
        let message1 = NSEntityDescription.insertNewObjectForEntityForName(Message.entityName, inManagedObjectContext: self.dataStore.managedObjectContext) as! Message
        message1.content = self.textField.text
        message1.createdAt = NSDate()
        dataStore.saveContext()
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
