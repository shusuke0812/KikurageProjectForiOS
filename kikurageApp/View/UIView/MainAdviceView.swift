//
//  MainAdviceView.swift
//  kikurageApp
//
//  Created by Shusuke Ota on 2020/10/26.
//  Copyright © 2020 shusuke. All rights reserved.
//

import UIKit

class MainAdviceView: XibView {
    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var adviceIconImageView: UIImageView!
    @IBOutlet weak var adviceTitleLabel: UILabel!
    @IBOutlet weak var adviceContentLabel: UILabel!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initBaseView()
        self.initAdviceTitleLabel()
        initAdviceIconImageView()
    }
}

extension MainAdviceView {
    private func initBaseView() {
        // BaseViewを角丸にする
        self.baseView.layer.cornerRadius = 18
        // BaseViewの枠線に色をつける
        self.baseView.layer.borderColor = UIColor.red.cgColor
        // BaseViewの枠線の太さを設定する
        self.baseView.layer.borderWidth = 1.0
    }
    private func initAdviceTitleLabel() {
        self.adviceTitleLabel.text = "【アドバイス】"
    }
    private func initAdviceIconImageView() {
        self.adviceIconImageView.image = R.image.hakase()
    }
}
