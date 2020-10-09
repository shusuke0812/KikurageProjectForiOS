//
//  hakaseViewController.swift
//  kikurageApp
//
//  Created by Shusuke Ota on 2019/03/02.
//  Copyright © 2019 shusuke. All rights reserved.
//

import UIKit
import MessageUI

class CommunicationViewController: UIViewController, MFMailComposeViewControllerDelegate {

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUI()
    }
    //MARK: - Action Method
    @IBAction func didTapFacebookButton(_ sender: Any) {
        // Facebookのきくらげコミュニティへ遷移させる
        self.transitionSafariViewController(urlString: Constants.Url.facebook)
    }
}
// MARK: - Initialized Method
extension CommunicationViewController {
    private func setUI() {
        // ナビゲーションバーの体裁を設定
        self.setNavigationBar(title: "みんなにそうだん")
    }
}
// MARK: - Private Method
extension CommunicationViewController {
}
/*
/*facebookグループ：https://www.facebook.com/groups/kikurage.community.2019/ */

//====================================================
/***********  Facebookグループへアクセス  ***********/
//====================================================
 
    @IBAction func communityButton(_ sender: Any) {
        guard let url = URL(string: "https://www.facebook.com/groups/kikurage.community.2019/") else { return }
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true, completion: nil)
    }
 
    
//====================================================
/***********  「問い合せボタン」からメールを送る  ***********/
//====================================================
    
//【課題①】iPhoneに保存されている写真を添付してメール機能　未実施　どうするか？
    
    @IBAction func sendEmail(_ sender: Any) {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            
            mail.mailComposeDelegate = self
            mail.setToRecipients(["kikurageproject2019@googlegroups.com"]) // 宛先アドレスMain
//          mail.setToRecipients(["shu.ota0812@gmail.com"]) // 宛先アドレスTest
            mail.setSubject("【きくらげ君アプリ】お問い合わせ") // 件名
            mail.setMessageBody("質問を入力して送信ボタンを押して下さい。\n--------------", isHTML: false) // 本文
            
            present(mail, animated: true, completion: nil)
        } else {
            print("送信できません")
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        switch result {
        case .cancelled:
            print("キャンセル")
        case .saved:
            print("下書き保存")
        case .sent:
            print("送信成功")
        default:
            print("送信失敗")
        }
        self.dismiss(animated: true, completion: nil)
    }
}
*/
