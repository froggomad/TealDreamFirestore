//
//  User.swift
//  Teal Dream
//
//  Created by Kenny on 12/20/20.
//

import Foundation
import FirebaseFirestoreSwift


// Identifiable lets us
struct TealUser: Identifiable, Codable {

    // UUID gives us a unique identifier every time
    // Giving a default value only affects instances we create. It uses the ID we store in Firebase when we download data
    // @DocumentID maps the uid property to Firestore when we upload or download
    // this must be optional
    @DocumentID var id: String? = UUID().uuidString
    let email: String
}
