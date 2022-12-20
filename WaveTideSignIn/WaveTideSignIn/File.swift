//
//  File.swift
//  WaveTideSignIn
//
//  Created by Reema Alhabdan on 20/12/2022.
//

import CloudKit
import SwiftUI
class   FileViewModel: ObservableObject{
    @Published var isSignedInToiCloud: Bool = false
    @Published var error: String = ""
    @Published var userName: String = ""
    
    init(){
        getiCloudStatus()
        
    }
    private func getiCloudStatus(){
        CKContainer.default().accountStatus {[weak self] returnedStatus, returnedError in
            DispatchQueue.main.async {
                switch returnedStatus{
                case .available:
                    self?.isSignedInToiCloud = true
                case .noAccount:
                    self?.error = CloudKitError.iCloudAccountNotFound.rawValue
                case .couldNotDetermine:
                    self?.error = CloudKitError.iCloudAccountNotDetermined.rawValue
                case .restricted:
                    self?.error = CloudKitError.iCloudAccountRestricted.rawValue
                default:
                    self?.error = CloudKitError.iCloudAccountUnknown.rawValue
                }
            }
        }
        enum CloudKitError: String, LocalizedError{
            case iCloudAccountNotFound
            case iCloudAccountNotDetermined
            case iCloudAccountRestricted
            case iCloudAccountUnknown
        }
        func discovericloudUser(id: CKRecord.ID) {
//            CKContainer.default().discoverUserIdentity(withUserRecordID: id) { [weak self] returnedIdentity, returnedError in
//                DispatchQueue.main.async {
//                    if let name = returnedIdentity?.nameComponents?.givenName
                        
                }
            }
        }
//    }
    struct File: View {
        
        
        @StateObject private var vm = FileViewModel()
        
        
        var body: some View {
            VStack{
                Text("IS SIGNED IN:\(vm.isSignedInToiCloud.description.uppercased())")
                Text(vm.error)
            }
            
        }
    }
    
    struct File_Previews: PreviewProvider {
        static var previews: some View {
           ContentView(vm: ListView(container: CKContainer.default()))
        }
    }
//}
