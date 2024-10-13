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
    private let entityName: String = "PortfolioEntity"
    
    @Published var savedEntities:[PortfolioEntity] = []
    init(){
        container = NSPersistentContainer(name: containerName)
        container.loadPersistentStores { (_, error) in
            if let error = error{
                print(error.localizedDescription)
            }
        }
    }
    private func getPortfolio(){
        let request = NSFetchRequest<PortfolioEntity>(entityName: entityName)
        do{
            savedEntities = try container.viewContext.fetch(request)
        }catch let error{
            print("error: \(error)")
        }
    }
    private func add(coin: CoinModel, amount: Double){
        let entity = PortfolioEntity(context: container.viewContext)
        entity.coinID = coin.id
        entity.amount = amount
    }
    private func update(entity: PortfolioEntity,amount: Double){
        entity.amount = amount
        applyChanges()
    }
    private func delete(entity: PortfolioEntity){
        container.viewContext.delete(entity)
        applyChanges()
    }
    
    private func save(){
        do{
            try container.viewContext.save()
        }catch let error{
            print(error.localizedDescription)
        }
    }
    private func applyChanges(){
        save()
        getPortfolio()
    }
}
