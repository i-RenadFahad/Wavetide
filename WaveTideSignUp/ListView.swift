//
//  ListView.swift
//  WaveTideSignUp
//
//  Created by Reema Alhabdan on 20/12/2022.
//

import Foundation
import CloudKit


enum RecordType: String {
    case account = "SignUp"
  
}

class ListView: ObservableObject {
    
    
    private var database: CKDatabase
    private var container: CKContainer
    
    init(container: CKContainer){
        
        self.container = container
        self.database = self.container.publicCloudDatabase
    }
    
    func newAccount(name: String, email: String, gender: String,
                  password: String){
        
        let record = CKRecord(recordType: RecordType.account.rawValue)
       
        let account = SignUp(name: name, email: email, gender: gender, password: password)
       record.setValuesForKeys(account.toDictionary())
        
        self.database.save(record) { newRecord, error in
            if let _ = newRecord {
                print("saved")
            }
        }
        
    }
    
  

    
}

