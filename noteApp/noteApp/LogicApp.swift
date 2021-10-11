//
//  LogicApp.swift
//  noteApp
//
//  Created by Павел on 06.10.2021.
//

import Foundation


class Note {
    static let Share = Note()
    var nameNote = ""
    var textNote = ""
    var indexNote = 0
}


var noteNameHeading: [[String]] = [["", ""]]

func addNote(nameNote: String, textNote: String) {
    noteNameHeading.insert([nameNote, textNote], at: 0)
    saveData()
}

func deleteNote(at index: Int) {
    noteNameHeading.remove(at: index)
    saveData()
}

func changeNote(nameNote: String, textNote: String, at index: Int) {
    deleteNote(at: index)
    addNote(nameNote: nameNote, textNote: textNote)
}

func saveData() {
    UserDefaults.standard.set(noteNameHeading, forKey: "Key")
    UserDefaults.standard.synchronize()
    
}

func loadData() {
    if let array = UserDefaults.standard.array(forKey: "Key") as? [[String]] {
        noteNameHeading = array

    } else {
        noteNameHeading = [["Привет!", "Можешь записать свои мысли и отредактировать их, если потребуется!"]]
    }
}


