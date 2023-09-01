//
//  ProductCell.swift
//  AvitoTehProject
//
//  Created by vasiario on 25.08.2023.
//

import UIKit

class ProductItemCell: UICollectionViewCell {

  let imageView = UIImageView()
  let id = UILabel()
  let title = UILabel()
  let price = UILabel()
  let location = UILabel()
  let image_url = UILabel()
  let created_date = UILabel()

  override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  func setup() {
    self.contentView.addSubview(imageView)
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.contentMode = .scaleAspectFill
    self.clipsToBounds = true

    NSLayoutConstraint.activate([
      imageView.widthAnchor.constraint(equalToConstant: 150),
      imageView.heightAnchor.constraint(equalToConstant: 150),
      imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
      imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
      imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
      imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
    ])

  }
}

typealias ProductCell = [ProductItemCell]
