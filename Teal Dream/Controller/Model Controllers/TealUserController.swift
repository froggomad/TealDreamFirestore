//
//  TealUserController.swift
//  Teal Dream
//
//  Created by Kenny on 12/20/20.
//

import Foundation
import FirebaseFirestore

class TealUserController {
    // the default database. We also need to save to a collection
    let db = Firestore.firestore()

    func saveUserDetailsToFirestore(user: TealUser) {
        // save a TealUser to the collection users under a document matching the user's identifier
        do {
            // _ = is how we discard a result from a function (this returns a document that we could use, but we don't need it here)
            let _ = try db.collection("users").addDocument(from: user)
        } catch {
            print("Error getting User Details from Firebase: \(error)")
        }
    }

    func getUserDetailsFromFirestore(user: TealUser) {
        // again, force unwrapping (user.id!) is generally a bad idea. But if we have an instance of a user, it must have an id because we're setting one for new users immediately and any users we get from the database will have an ID
        db.collection("users").document(user.id!)
    }

}
