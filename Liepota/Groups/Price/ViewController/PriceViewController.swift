//
//  PriceViewController.swift
//  Liepota
//
//  Created by Наджафов Араз on 03.11.2020.
//

import UIKit

class PriceViewController: UIViewController {
    
    // - UI
    @IBOutlet weak var vcButtonView: UIButton!
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var infoButtonView: UIButton!
    
    // - Contact
    @IBOutlet var activityTypeButtonsView: [UIButton]!
    @IBOutlet weak var instagramButton: UIButton!
    @IBOutlet weak var telegramButton: UIButton!
    @IBOutlet weak var vkButton: UIButton!
    @IBOutlet weak var phoneButton: UIButton!
    
//    var data = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelView.text = """

Здравствуйте мальчики и девочки, дамы и господа.

Меня зовут Станислав Лиепа.

Здесь вы можете ознакомиться с моим творчеством и ценами на работу.
  
"""
        
        configure()
    }
    
    @IBAction func didTapButtonAction(_ sender: Any) {
        let picturesVC = UIStoryboard(name: "Pictures", bundle: nil).instantiateInitialViewController() as! PicturesViewController
        navigationController?.pushViewController(picturesVC, animated: true)
    }
    
    @IBAction func infoActionButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Пару слов о $", message: """
        Все съемки проводятся по предоплате. Размер предоплаты оговаривается.
        Для начала обсуждения съемки советую напрямую писать мне в ЛС по ссылкам ниже.
        Цена оговаривается в зависимости от сложности работ.
        """, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Понял", style: .default) { _ in
            print("Did tap on Got it Button")
        }
        
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
        
        print("Info")
    }
    
    @IBAction func instagramButtonAction(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://www.instagram.com/liepota/?hl=ru")! as URL, options: [:], completionHandler: nil)
        
        print("Телеграм")
    }
    
    @IBAction func telegramButtonAction(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://t.me/Liepota")! as URL, options: [:], completionHandler: nil)
        
        print("Телеграм")
    }
    
    @IBAction func vkButtonAction(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://vk.com/liepa")! as URL, options: [:], completionHandler: nil)
        
        print("Вк")
    }
    
    @IBAction func phoneButtonAction(_ sender: UIButton) {
        
        if let phoneURL = URL(string: "tel://+79215776663") {
            let alert = UIAlertController(title: ("Позвонить по номеру " + "+79215776663" + "?"), message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Позвонить", style: .default, handler: { (action) in
                UIApplication.shared.openURL(phoneURL)
            }))
            
            alert.addAction(UIAlertAction(title: "Отмена", style: .cancel, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
            UIApplication.shared.open(URL(string: "+79215776663")! as URL, options: [:], completionHandler: nil)
            
            print("Телефон")
        }
    }
    
}

// MARK: -
// MARK: - Configure
private extension PriceViewController {
    
    func configure() {
        configureView()
        configureNavigationBar()
    }
    
    func configureView() {
        view.backgroundColor = .white
    }
    
    func configureNavigationBar() {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        
        let image = UIImage(named: "Liepota-Logo")
        imageView.image = image
        
        navigationItem.titleView = imageView
    }
    
}
