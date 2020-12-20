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
            let _ = try db.collection("users").document(user.id!).setData(from: user)

        } catch {
            print("Error getting User Details from Firebase: \(error)")
        }
    }

    // Completion handlers are weird. This is how we get data when we aren't sure when it will come back
    // Adding one to our function's signature allows us to get this data back where we call the function
    // For example, if we call this function in a ViewController, we can get our user there and display the data
    func getUserDetailsFromFirestore(user: TealUser, completion: @escaping (TealUser?) -> Void) {
        // again, force unwrapping (user.id!) is generally a bad idea. But if we have an instance of a user, it must have an id because we're setting one for new users immediately and any users we get from the database will have an ID
        // here we're telling Firestore we want to get this document. But the document could contain any data
        // so we need to downcast it (convert it) to our TealUser type
        db.collection("users").document(user.id!).getDocument { document, error in
            do {
                // here we turn the document into our TealUser class (using .self to reference the class)
                let user = try document?.data(as: TealUser.self)
                // and here we complete it. This sends the data back to the caller (for instance a ViewController)
                completion(user)
            } catch {

            }
        }
    }

}
