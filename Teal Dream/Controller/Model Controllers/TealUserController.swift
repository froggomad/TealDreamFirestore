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

    }

    // Completion handlers are weird. This is how we get data when we aren't sure when it will come back
    // Adding one to our function's signature allows us to get this data back where we call the function
    // For example, if we call this function in a ViewController, we can get our user there and display the data
    func getUserDetailsFromFirestore(userId: String, completion: @escaping (TealUser?) -> Void) {
        
    }

}
