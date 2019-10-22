//
//  DesignableLabel.swift
//  Ale
//
//  Created by thedoritos on 2019/10/22.
//

import UIKit

@IBDesignable
class DesignableLabel: UILabel {
    @IBInspectable
    var lineHeight: CGFloat = 0 {
        didSet {
            applyLineHeight()
        }
    }

    override var text: String? {
        didSet {
            applyLineHeight()
        }
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        applyLineHeight()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        applyLineHeight()
    }

    private func applyLineHeight() {
        let lineHeight = self.lineHeight
        guard lineHeight != 0 else { return }
        guard let text = self.text else { return }

        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.minimumLineHeight = lineHeight
        paragraphStyle.maximumLineHeight = lineHeight

        let attributedText = NSMutableAttributedString(string: text)
        attributedText.addAttribute(
            NSAttributedString.Key.paragraphStyle,
            value: paragraphStyle,
            range: NSRange(location: 0, length: attributedText.length)
        )

        self.attributedText = attributedText
    }
}
