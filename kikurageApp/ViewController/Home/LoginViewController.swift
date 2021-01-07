//
//  loginViewController.swift
//  kikurageApp
//
//  Created by Shusuke Ota on 2019/03/22.
//  Copyright © 2019 shusuke. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    /// BaseView
    private var baseView: LoginBaseView { self.view as! LoginBaseView }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setDelegateDataSource()
    }
}
// MARK: - Initialized Method
extension LoginViewController {
    private func setDelegateDataSource() {
        self.baseView.delegate = self
    }
}
// MARK: - LoginBaseView Delegate Method
extension LoginViewController: LoginBaseViewDelegate {
    func didTapLoginButton() {
        self.transitionHomePage()
    }
    private func transitionHomePage() {
        let s: UIStoryboard = UIStoryboard(name: "MainViewController", bundle: nil)
        let vc: UIViewController = s.instantiateViewController(withIdentifier: "MainViewController")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    func didTapTermsButton() {
    }
    func didTapPrivacyPolicyButton() {
    }
}
