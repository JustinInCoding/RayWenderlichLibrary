//
//  TitleSupplementaryView.swift
//  RayWenderlichLibrary
//
//  Created by Justin on 2024/3/29.
//  Copyright © 2024 Ray Wenderlich. All rights reserved.
//

import UIKit

final class TitleSupplementaryView: UICollectionReusableView {
	
	static let reuseIdentifier = String(describing: TitleSupplementaryView.self)
	
	let textLabel = UILabel()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		configure()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) is not implemented")
	}
	
	private func configure() {
		addSubview(textLabel)
		textLabel.font = UIFont.preferredFont(forTextStyle: .title2)
		textLabel.translatesAutoresizingMaskIntoConstraints = false
		
		let inset: CGFloat = 10
		NSLayoutConstraint.activate([
			textLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: inset),
			textLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -inset),
			textLabel.topAnchor.constraint(equalTo: topAnchor, constant: inset),
			textLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -inset)
		])
		
	}
}
