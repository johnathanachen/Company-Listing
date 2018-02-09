//
//  CoreDataManager.swift
//  CompanyListing
//
//  Created by Johnathan Chen on 2/6/18.
//  Copyright © 2018 JCSwifty. All rights reserved.
//

import CoreData

struct CoreDataManager {
    
    static let shared = CoreDataManager()
    
    let presistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "CompanyListingModel")
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error {
                fatalError("Loading persistent store failed: \(error)")
            }
        }
        return container
    }()
    
    func fetchCompanies() -> [Company] {
        let context = presistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<Company>(entityName: "Company")
        
        do {
            let companies = try context.fetch(fetchRequest)
            
            return companies
            
        } catch let fetchingError {
            print("Error fetching core data: \(fetchingError)")
            return []
        }
    }
}
