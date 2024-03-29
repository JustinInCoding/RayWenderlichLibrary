//
//  BadgeSupplementaryView.swift
//  RayWenderlichLibrary
//
//  Created by Justin on 2024/3/29.
//  Copyright © 2024 Ray Wenderlich. All rights reserved.
//

import UIKit

class BadgeSupplementaryView: UICollectionReusableView {
	static let reuseIdentifier = String(describing: BadgeSupplementaryView.self)
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		configure()
	}
	
	required init?(coder: NSCoder) {
		fatalError()
	}
	
	private func configure() {
		backgroundColor = UIColor(named: "rw-green")
		let radius = bounds.width / 2.0
		layer.cornerRadius = radius
	}
}
