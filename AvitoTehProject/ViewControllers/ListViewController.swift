//
//  ListViewController.swift
//  AvitoTehProject
//
//  Created by vasiario on 25.08.2023.
//

import SnapKit
import UIKit

final class ListViewController: UIViewController {
  //  MARK: - View lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    initialize()

  }

  //  MARK: - Private properties
  private var collectionView: UICollectionView!


}

//MARK: - Private methods
private extension ListViewController {
  func initialize() {
    view.backgroundColor = .white
    collectionView = UICollectionView(frame: .zero, collectionViewLayout: setupFlowLayout())
    view.addSubview(collectionView)
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    collectionView.snp.makeConstraints { make in
      make.edges.equalToSuperview()
    }

    collectionView.dataSource = self
    collectionView.delegate = self

    collectionView.register(ProductItemCell.self, forCellWithReuseIdentifier: "\(ProductItemCell.self)")
  }


  func setupFlowLayout() -> UICollectionViewFlowLayout {
    let layout = UICollectionViewFlowLayout()
    layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
    layout.minimumLineSpacing = 10
    layout.minimumInteritemSpacing = 50
    layout.sectionInset = .init(top: 20, left: 20, bottom: 20, right: 20)
    return layout
  }
}

//MARK: - UICollectionViewDataSource
extension ListViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 10
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(ProductItemCell.self)", for: indexPath) as? ProductItemCell else {
      return UICollectionViewCell()
    }
    cell.imageView.image = UIImage(named: "monkey")
    return cell
  }
}

//MARK: - UICollectionViewDelegate
extension ListViewController: UICollectionViewDelegate {

}
