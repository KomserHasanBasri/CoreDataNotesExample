//
//  Note+CoreDataProperties.swift
//  CoreDataNotesExample
//
//  Created by Hasan Basri Komser on 8.12.2022.
//
//

import Foundation
import CoreData
import UIKit


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var priorityColor: UIColor?
    @NSManaged public var noteText: String?
    @NSManaged public var dateAdded: Date?

}

extension Note : Identifiable {}
