//
//  SignUp.swift
//  WaveTideSignUp
//
//  Created by Reema Alhabdan on 20/12/2022.
//

import CloudKit



struct SignUp: Identifiable {
    let id = UUID().uuidString
    let recordId: CKRecord.ID?
    var name: String
    var email : String
    var  gender : String
    var password : String

  

    init(recordId: CKRecord.ID? = nil, name: String, email: String, gender: String,
         password: String) {
        
        self.name = name
        self.email = email
        self.gender = gender
        self.password = password
       
        self.recordId = recordId
        
    }
    
        init(record:CKRecord){
            self.recordId  = record.recordID
            self.name = record["name"] as? String ?? "N/A"
            self.email  = record["email"] as? String ?? "N/A"
            self.gender   = record["gender"] as? String ?? "N/A"
            self.password    = record["password"] as? String ?? "N/A"
       
        }
    
    func toDictionary() -> [String: Any] {
        return ["name": name, "email": email, "gender": gender, "password": password]
    }
}

