//
//  TableViewController.swift
//  noteApp
//
//  Created by Павел on 06.10.2021.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noteNameHeading.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = noteNameHeading[indexPath.row][0]
        cell.detailTextLabel?.text = noteNameHeading[indexPath.row][1]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            deleteNote(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {

        }    
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
   
        Note.Share.nameNote = noteNameHeading[indexPath.row][0]
        Note.Share.textNote = noteNameHeading[indexPath.row][1]
        Note.Share.indexNote = indexPath.row
    }
    
override func viewDidAppear(_ animated: Bool) {
    self.tableView.reloadData()
    }
}
