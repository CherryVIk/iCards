//
//  ViewController.swift
//  iCards
//
//  Created by Victoria Boichenko on 08.08.2020.
//  Copyright © 2020 Victoria Boichenko. All rights reserved.
//

import UIKit
import CoreData

class TableViewController: UITableViewController {
    
    var people = [Person]()
    let context = (UIApplication.shared.delegate as!  AppDelegate).persistentContainer.viewContext

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
    }
    
    //MARK: - TableView DataSource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(people.count)
        return people.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath)
        
        cell.textLabel?.text = people[indexPath.row].name
        
        return cell
    }
    
    //MARK: - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "GoToProfile", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    //MARK: - Data Manipulation Methods
    func saveData(){
        do {
            try context.save()
        } catch {
            print("Error saving data from context \(error)")
        }
        
        tableView.reloadData()
    }
    
    func loadData(){
        let request: NSFetchRequest<Person> = Person.fetchRequest()
        do {
            people = try context.fetch(request)
        } catch {
            print("Error fetching data from context \(error)")
        }
    }
    //MARK: - Add New Items

    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Add new item", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add", style: .default) { _ in
            let item = alert.textFields![0]
            
            if item.text?.count != 0 {
                let person = Person(context: self.context)
                person.name = item.text!
                self.people.append(person)
                
                self.saveData()
                
            }
        }
        alert.addTextField { (textField) in
            
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
}

