//
//  UITextViewWithPlaceholder.swift
//  kikurageApp
//
//  Created by Shusuke Ota on 2020/11/17.
//  Copyright © 2020 shusuke. All rights reserved.
//

/*
 * UITextViewにコードでPlaceholderを設定できるようにするカスタムクラス
 */

import UIKit

class UITextViewWithPlaceholder: UITextView {
    /// プレースホルダーのラベル
    private lazy var placeholderLabel = UILabel(frame: CGRect(x: 6, y: 6, width: 0, height: 0))
    
    var placeholder: String = "" {
        didSet {
            if !placeholder.isEmpty { return }
            self.placeholderLabel.text = NSLocalizedString(placeholder, comment: "")
            self.placeholderLabel.sizeToFit()
        }
    }
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        self.delegate = self
        self.setPlaceholder()
        self.switchPlaceholderDisplay()
    }
}
// MARK: - Private Method
extension UITextViewWithPlaceholder {
    // TextViewの基本設定
    private func setPlaceholder() {
        self.placeholderLabel.backgroundColor = .clear
        self.placeholderLabel.textColor = UIColor.lightGray
        self.placeholderLabel.lineBreakMode = .byWordWrapping
        self.placeholderLabel.numberOfLines = 0
        self.placeholderLabel.font = self.font
        addSubview(self.placeholderLabel)
    }
    // Placeholderの表示・非表示切り替え
    private func switchPlaceholderDisplay() {
        self.placeholderLabel.isHidden = text.isEmpty ? false : true
    }
}
// MARK: - Delegate Method
extension UITextViewWithPlaceholder: UITextViewDelegate {
    // TextViewに文字が入力されたらplaceholderを非表示にする
    func textViewDidChange(_ textView: UITextView) {
        self.switchPlaceholderDisplay()
    }
}