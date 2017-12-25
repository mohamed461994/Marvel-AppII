//
//  DetailesEntity+CoreDataClass.swift
//  Marvel App
//
//  Created by MohamedSh on 12/25/17.
//  Copyright © 2017 MohamedSh. All rights reserved.
//
//

import Foundation
import CoreData

@objc(DetailesEntity)
public class DetailesEntity: NSManagedObject {
    class func insertToCoreDataIfNotInserted(context:NSManagedObjectContext,title:String){
        let request:NSFetchRequest<DetailesEntity>=DetailesEntity.fetchRequest()
        request.predicate = NSPredicate(format: "title = %@",title)
        if let _ = (try? context.fetch(request).first)as? DetailesEntity{
            
        }else{
    
        }
    }
}

