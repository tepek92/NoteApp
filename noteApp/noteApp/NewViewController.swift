//
//  NewViewController.swift
//  noteApp
//
//  Created by Павел on 07.10.2021.
//

import UIKit

class NewViewController: UIViewController {

    
    @IBOutlet weak var newNameNote: UITextField!
    @IBOutlet weak var newTextNote: UITextView!
    
    override func viewDidLoad() {
    }
    
    @IBAction func saveNoteButton(_ sender: Any) {
        addNote(nameNote: newNameNote.text!, textNote: newTextNote.text!)
        navigationController?.popToRootViewController(animated: true)
    }
}





 
