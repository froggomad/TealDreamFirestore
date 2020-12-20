//
//  User.swift
//  Teal Dream
//
//  Created by Kenny on 12/20/20.
//

import Foundation
import FirebaseFirestoreSwift


// Identifiable and Codable are required to use the FirebaseFirestoreSwift methods (the "easy" way)
struct TealUser: Identifiable, Codable {
    // Giving a default value only affects instances we create.
    // It uses the ID we store in Firebase when we download data
    // @DocumentID maps the id property to Firestore when we upload or download
    // this must be optional
    // Note: we aren't actually taking advantage of @DocumentID here, but will be using it later.
    @DocumentID var id: String? = "123"
    let email: String
}
