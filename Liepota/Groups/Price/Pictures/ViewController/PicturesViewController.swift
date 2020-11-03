//
//  PicturesViewController.swift
//  Liepota
//
//  Created by Наджафов Араз on 03.11.2020.
//

import UIKit

class PicturesViewController: UIViewController {

    // - UI
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    // - Data
    private var imgs = [PicturesModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()

    }

}

// MARK: -
// MARK: - CollectionViewdatasource

extension PicturesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let pic = imgs[indexPath.item]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PicturesCollectionViewCell", for: indexPath) as! PicturesCollectionViewCell
        cell.imageView.image = UIImage(named: pic.image)
        cell.labelView.text = pic.label
        cell.delegate = self
        
        return cell
    }
    
}

// MARK: -
// MARK: - ButtonOfUsersCollectionViewCellDelegate:

extension PicturesViewController: ButtonOfAlertCollectionViewCellDelegate {
    func alertBttn(collectionViewCell: UICollectionViewCell) {
        guard let indexPath = collectionView.indexPath(for: collectionViewCell) else {return}
        
        if indexPath.row == 0 {
            let alert = UIAlertController(title: "Двухчасовая съёмка", message: """
 На выходе получается 16 фото в обработке.
Дополнительные фото на обработку стоят 500/р фото.
В день Сьемки уже отдаю исходники и в течении 4 рабочих дней после выбора фото отдаю готовые.
Выезд за город (дорога >1 часа) + 15% к стоимости Сьемки и оплата трансфера.
""", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Понятно", style: .default, handler: nil)
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
        } else if indexPath.row == 1 {
            let alert = UIAlertController(title: "Часовая съёмка", message: """
    Одежду/локацию и референс выбираем вместе.
    На выходе отдаю все исходники и 8 фото делаю на ваш выбор.
    (Цветокор и не глубокая ретушь).
    Кол-во человек - 1 (за каждого последующего доплата 1000р/человек).
    """, preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Понятно", style: .default, handler: nil)
            alert.addAction(alertAction)
            self.present(alert, animated: true, completion: nil)
        } else if indexPath.row == 2 {
            let alert = UIAlertController(title: "Экспресс портрет", message: """
    Продолжительность - 30 минут.
    На выходе 4 фотографии в обработке.
    Возможна обработка дополнительных фото - 600/фото.
    Душевные беседы прилагаются)
    Остальные подробности в ЛС.
    """, preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Понятно", style: .default, handler: nil)
            alert.addAction(alertAction)
            self.present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Съемка с квадрокоптера", message: """
    Фото-съемка обговаривается индивидуально, в зависимости от сложности.
    Продолжительность - 25 мин.
    """, preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Понятно", style: .default, handler: nil)
            alert.addAction(alertAction)
            self.present(alert, animated: true, completion: nil)
        }
        print("Delegate")
    }
}

// MARK: -
// MARK: - CollectionViewDelegate

extension PicturesViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
    
}

// MARK: -
// MARK: - ScrollViewDelegate

extension PicturesViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x/scrollView.frame.width
        pageControl.currentPage = Int(page)
    }
    
}


// MARK: -
// MARK: - Configure

private extension PicturesViewController {
    
    func configure() {
        configureView()
        configureNavigationBar()
        configureCollectionView()
        configureImages()
    }
    
    func configureView() {
        view.backgroundColor = .white
    }
    
    func configureNavigationBar() {
        navigationItem.title = "About us"
    }
    
    func configureCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func configureImages() {
        let photos = ["1", "2", "3", "4"]
        let labels = ["""
            Двухчасовая съёмка (1200 руб)
            """,
                      "Часовая съёмка (8000 руб)",
                      "Экспресс портрет (4000 руб)",
                      "Съемка с квадрокоптера (15000 руб)"]
        
        for index in 0..<photos.count {
            let phts = PicturesModel(image: photos[index], label: labels[index])
            imgs.append(phts)
        }
        
    }
    
}
