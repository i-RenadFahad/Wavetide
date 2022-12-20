//
//  SignIn.swift
//  WaveTideSignIn
//
//  Created by Reema Alhabdan on 20/12/2022.
//

import CloudKit

struct SignIn: Identifiable{
    let id = UUID().uuidString
    let recordId: CKRecord.ID?
    var name: String
    var password: String
    
    
    init(recordID: CKRecord.ID? = nil, name: String, password: String) {
        
        self.name = name
        self.password = password
        self.recordId = recordID
    }
    init(record:CKRecord){
        self.recordId = record.recordID
        self.name = record["name"] as? String ?? "N/A"
        self.password = record["password"] as? String ?? "N/A"
    }
    func toDictionary() -> [String: Any]{
        return["name": name, "password": password]
    }
}
