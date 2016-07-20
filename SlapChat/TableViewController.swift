//
//  TableViewController.swift
//  SlapChat
//
//  Created by susan lovaglio on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import CoreData

class TableViewController: UITableViewController {

    //before 4:03
    //4:08 he says something about reloadData()
    
    let dataStore = DataStore.sharedDataStore
    var messagesVC : [Message]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        dataStore.fetchData()
        self.tableView.reloadData()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataStore.messages.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("basicCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = dataStore.messages[indexPath.row].content
        
        
        return cell
    }
    
    
    
    
//    func generateTestData() {
//        
//        let taskDescription = NSEntityDescription.entityForName("Message", inManagedObjectContext: self.dataStore.managedObjectContext)
//        if let taskDescription = taskDescription {
//            var newMessage = Message(entity: taskDescription, insertIntoManagedObjectContext: self.dataStore.managedObjectContext)
//            newMessage.content = "Hey hows your evening?"
//            newMessage.createdAt = NSDate()
//            
//            self.dataStore.managedObjectContext.insertObject(newMessage)
//            
//            newMessage = Message(entity: taskDescription, insertIntoManagedObjectContext: self.dataStore.managedObjectContext)
//            
//            newMessage.content = "Sup"
//            newMessage.createdAt = NSDate()
//            
//            self.dataStore.managedObjectContext.insertObject(newMessage)
//            self.dataStore.saveContext()
//            self.dataStore.fetchData()
//            
//            self.messagesVC = self.dataStore.messages
////            print("Messages are: \(messagesVC)")
//            print("Datastore messages are: \(self.dataStore.messages)")
//        }
//    }
}
