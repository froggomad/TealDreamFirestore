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
        // you probably wouldn't normally do this here, because you would have a user stored centrally, but we need a user to work with for our example
        self.user = TealUser(id: "123", email: "example@example.com")
    }


}
