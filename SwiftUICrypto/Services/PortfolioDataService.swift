//
//  PortfolioDataService.swift
//  SwiftUICrypto
//
//  Created by Turgut Eren Aksu on 7.10.2024.
//

import Foundation
import CoreData

class PortfolioDataService{
    private let container: NSPersistentContainer
    private let containerName: String = "PortfolioContainer"
    init(){
        container = NSPersistentContainer(name: containerName)
        container.loadPersistentStores { (_, error) in
            if let error = error{
                print(error.localizedDescription)
            }
        }
    }
}
