//
//  NoteViewController.swift
//  noteApp
//
//  Created by Павел on 08.10.2021.
//

import UIKit

class NoteViewController: UIViewController {

    @IBOutlet weak var noteNameSave: UITextField!
    @IBOutlet weak var noteTextSave: UITextView!
        
    override func viewDidLoad() {
        noteNameSave.text = Note.Share.nameNote
        noteTextSave.text = Note.Share.textNote
        super.viewDidLoad()
    }
   
    @IBAction func changeSaveButton(_ sender: Any) {
        changeNote(nameNote: noteNameSave.text!, textNote: noteTextSave.text, at: Note.Share.indexNote)
        navigationController?.popToRootViewController(animated: true)
    }
    
}
