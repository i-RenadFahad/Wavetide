//
//  ListView.swift
//  WaveTideSignIn
//
//  Created by Reema Alhabdan on 20/12/2022.
//

import Foundation
import CloudKit

enum RecordType: String{
    case account = "SignIn"
}
class ListView: ObservableObject{
    private var database: CKDatabase
    private var container: CKContainer
    init(container: CKContainer) {
        
        self.container = container
        self.database = self.container.publicCloudDatabase
    }
    func existingAccount(name:String,password:String){
        let record = CKRecord(recordType: RecordType.account.rawValue)
        let account = SignIn(name: name, password: password )
        record.setValuesForKeys(account.toDictionary())
        
        self.database.save(record){ newRecord, error in
            if let _ = newRecord{
                print("saved")
            }
        }
    }
}
