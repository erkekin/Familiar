//
//  Familiar.swift
//  FamiliarDemo
//
//  Created by ICterra on 12/08/2017.
//  Copyright © 2017 Erk Ekin. All rights reserved.
//

struct Familiar{
    
    let text:String?
    
    init<K>(items:[K], familiarItems:[K], maxFamiliarCount:Int = 1) where K:CustomStringConvertible, K:Comparable, K:Hashable{
        
        let itemsSet = Set(items)
        let myItemsSet = Set(familiarItems)
        
        let intersection = itemsSet.intersection(myItemsSet)
        
        let familiarItemsCount = min(maxFamiliarCount, intersection.count)
        let othersCount = itemsSet.count - familiarItemsCount
        if intersection.count > 0 {
            let intersectedFamiliars = Array(intersection)
            
            let familiarsText = (0...familiarItemsCount-1)
                .map{intersectedFamiliars[$0].description}
                .joined(separator: ", ")
            
            self.text = familiarsText + " and \(othersCount) others."
        }else{
            self.text = "\(othersCount) items."
        }
    }
    
}

