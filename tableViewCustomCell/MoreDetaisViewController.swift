
import UIKit

class MoreDetaisViewController: UIViewController {
    
    var selectedItem: TableData?
    
    lazy var userName: UILabel = {
        .config(view: $0) {
            $0.font = .systemFont(ofSize: 20, weight: .bold)
            $0.text = selectedItem?.name
        }
    }(UILabel())
    
    lazy var image: UIImageView = {
        .config(view: $0) {
            $0.contentMode = .scaleAspectFill
            $0.layer.cornerRadius = 15
            $0.clipsToBounds = true
            $0.image = UIImage(named: "\(selectedItem?.photo ?? "")" )
        }
    }(UIImageView())
    lazy var text: UILabel = {
        .config(view: $0) {
            $0.font = .systemFont(ofSize: 14, weight: .regular)
            $0.numberOfLines = 0
            $0.text = selectedItem?.text
        }
    }(UILabel())
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(image)
        view.addSubview(userName)
        view.addSubview(text)
        view.backgroundColor = .white
        
        let ratio = (image.image?.size.height ?? 0) / (image.image?.size.width ?? 0)
        let imageHeight = (view.frame.width - 20) * ratio
        
        NSLayoutConstraint.activate([
            userName.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            userName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            
            image.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 24),
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            image.heightAnchor.constraint(equalToConstant: imageHeight),
            
            text.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 62),
            text.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            text.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
}
