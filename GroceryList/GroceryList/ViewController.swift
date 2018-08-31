//
//  ViewController.swift
//  GroceryList
//
//  Created by Mitchell Socia on 8/31/18.
//  Copyright © 2018 Mitchell Socia. All rights reserved.
//

import UIKit

class GroceryViewController: UITableViewController {

     var groceryList = ["Eggs", "Milk", "Cheese", "Corn", "Pizza", "Bread", "Ice Cream", "Garbage Bags", "Magazines", "Noodles", "Yogurt", "Pizza Rolls", "Whiskey", "Single Grapefruit"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceryList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroceryListItem", for: indexPath)
        
        cell.textLabel?.text = groceryList[indexPath.row]
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            groceryList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .top)
        }
    }
}
    



