//
//  StickyHeaderTabBarViewCell.swift
//  Treble
//
//  Created by Benjamin Chrobot on 9/20/17.
//  Copyright © 2017 Treble Media, Inc. All rights reserved.
//

import UIKit

public class StickyHeaderTabBarViewCell: UICollectionViewCell {

    // MARK: - Public Properties

    /// The tab's title
    public var title: String? {
        get {
            return titleLabel.text
        }
        set {
            titleLabel.text = newValue
        }
    }

    // MARK: - Private Properties

    private static let titleFont = UIFont.systemFont(ofSize: 14)

    // MARK: Views

    private let titleLabel = UILabel()

    // MARK: - Initialization

    public override init(frame: CGRect) {
        super.init(frame: frame)

        commonInit()
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup

    private func commonInit() {
        setUpTitleLabel()
    }

    private func setUpTitleLabel() {
        addSubview(titleLabel)
        titleLabel.font = StickyHeaderTabBarViewCell.titleFont
        titleLabel.textAlignment = .center
    }

    // Overrides

    public override func layoutSubviews() {
        // Title label
        titleLabel.frame = CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height)
    }

    // MARK: - Public Methods

    open static func cellSize(for text: String) -> CGSize {
        return text.size(attributes: [NSFontAttributeName: StickyHeaderTabBarViewCell.titleFont])
    }
}