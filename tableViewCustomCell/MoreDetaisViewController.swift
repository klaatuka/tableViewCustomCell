
import UIKit

class MoreDetaisViewController: UIViewController {
    
    var selectedItem: TableData?
    
    lazy var scroll: UIScrollView = {
        .config(view: $0) {
            $0.backgroundColor = .yellow
        }
    }(UIScrollView())
    lazy var scrollView: UIView = {
        .config(view: $0) {
            $0.backgroundColor = .red
        }
    }(UIView())
    
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
        view.addSubview(scroll)
        scroll.addSubview(scrollView)
        
        navigationItem.title = selectedItem?.name
   
        scrollView.addSubview(image)
        scrollView.addSubview(userName)
        scrollView.addSubview(text)
        view.backgroundColor = .white
        
        let ratio = (image.image?.size.height ?? 0) / (image.image?.size.width ?? 0)
        let imageHeight = (view.frame.width - 20) * ratio
        
        NSLayoutConstraint.activate([
            scroll.topAnchor.constraint(equalTo: view.topAnchor),
            scroll.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scroll.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scroll.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            scrollView.topAnchor.constraint(equalTo: scroll.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: scroll.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: scroll.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: scroll.bottomAnchor),
            scrollView.widthAnchor.constraint(equalTo: scroll.widthAnchor),
//            scrollView.heightAnchor.constraint(equalToConstant: 900),
            
            userName.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 100),
            userName.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 40),
            
            image.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 24),
            image.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            image.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            image.heightAnchor.constraint(equalToConstant: imageHeight),
            
            text.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 62),
            text.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            text.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            text.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -20)
        ])
    }
}
