//
//  ViewController.swift
//  Teal Dream
//
//  Created by Kenny on 12/20/20.
//

import UIKit

class ViewController: UIViewController {

    var user: TealUser?
    var userController = TealUserController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // you probably wouldn't normally do this here, because you would have a user stored centrally
        self.user = TealUser(email: "example@example.com")
        // normally force unwrapping (user!) isn't a good idea, but we just set it, so it's safe here
        userController.saveUserDetailsToFirestore(user: user!)
    }


}

