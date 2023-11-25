

import UIKit

class MyViewCell: UITableViewCell {

    static var reuiCellName = "cell"
    
    private lazy var cellView: UIView = {
        .config(view: $0) {
            $0.backgroundColor = .white
            $0.layer.cornerRadius = 10
        }
    }(UIView())
    
    private lazy var postImage: UIImageView = {
        .config(view: $0) {
            $0.contentMode = .scaleAspectFill
            $0.clipsToBounds = true
            $0.layer.cornerRadius = 15
        }
    }(UIImageView())
    
    private lazy var hStack: UIStackView = {
        .config(view: $0) {
            $0.distribution = .equalSpacing
            $0.addArrangedSubview(nameAccountOwner)
            $0.addArrangedSubview(hStack2)
        }
    }(UIStackView())
    private lazy var hStack2: UIStackView = {
        .config(view: $0) {
            $0.distribution = .equalSpacing
            $0.spacing = 20
            $0.addArrangedSubview(callIcon)
            $0.addArrangedSubview(ackIcon)
        }
    }(UIStackView())
    private lazy var nameAccountOwner: UILabel = {
        .config(view: $0) {
            $0.text = ""
            $0.font = .systemFont(ofSize: 16, weight: .bold)
        }
    }(UILabel())
    private lazy var callIcon: UIImageView = {
        .config(view: $0) {
            $0.image = UIImage(systemName: "phone.fill")?.withTintColor(.black, renderingMode: .alwaysOriginal)
        }
    }(UIImageView())
    private lazy var ackIcon: UIImageView = {
        .config(view: $0) {
            $0.image = UIImage(systemName: "person.fill")?.withTintColor(.black, renderingMode: .alwaysOriginal)
        }
    }(UIImageView())
    
    private lazy var postText: UILabel = {
        .config(view: $0) {
            $0.numberOfLines = 0
            $0.text = ""
        }
    }(UILabel())
    lazy var moreDetailsBtn: UIButton = {
        .config(view: $0) {
            $0.backgroundColor = #colorLiteral(red: 0, green: 0.6625067592, blue: 0.4279575944, alpha: 1)
            $0.setTitle("Подробнее", for: .normal)
            $0.layer.cornerRadius = 15
            $0.tintColor = .white
        }
    }(UIButton(/*primaryAction: actionBtn*/))
//    lazy var actionBtn = UIAction { _ in
//        print(1)
//    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .clear
    }
    
    func configureCell(cellData: TableData){
        contentView.addSubview(cellView)
        cellView.addSubview(postImage)
        cellView.addSubview(hStack)
        cellView.addSubview(postText)
        cellView.addSubview(moreDetailsBtn)
        
        postText.text = cellData.text
        postImage.image = UIImage(named: "\(cellData.photo)")
        nameAccountOwner.text = cellData.name
        
        
        let ratio = (postImage.image?.size.height ?? 0) / (postImage.image?.size.width ?? 0)
        let imageHeight = (self.frame.width - 20) * ratio
        
        let tapGesture1 = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        callIcon.isUserInteractionEnabled = true
        callIcon.addGestureRecognizer(tapGesture1)
        
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(imageTapped2))
        ackIcon.isUserInteractionEnabled = true
        ackIcon.addGestureRecognizer(tapGesture2)
        
        
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: contentView.topAnchor),
            cellView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            cellView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            cellView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            postImage.topAnchor.constraint(equalTo: cellView.topAnchor),
            postImage.leadingAnchor.constraint(equalTo: cellView.leadingAnchor),
            postImage.trailingAnchor.constraint(equalTo: cellView.trailingAnchor),
            postImage.heightAnchor.constraint(equalToConstant: imageHeight),
            
            hStack.topAnchor.constraint(equalTo: postImage.bottomAnchor, constant: 17),
            hStack.leadingAnchor.constraint(equalTo: cellView.leadingAnchor,constant: 34),
            hStack.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -24),
            
            postText.topAnchor.constraint(equalTo: hStack.bottomAnchor, constant: 24),
            postText.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 15),
            postText.trailingAnchor.constraint(equalTo: cellView.trailingAnchor,constant: -15),
            
            moreDetailsBtn.topAnchor.constraint(equalTo: postText.bottomAnchor, constant: 23),
            moreDetailsBtn.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 15),
            moreDetailsBtn.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -15),
            moreDetailsBtn.bottomAnchor.constraint(equalTo: cellView.bottomAnchor, constant: -25),
            moreDetailsBtn.heightAnchor.constraint(equalToConstant: 45)

        ])
   
    }
    @objc func imageTapped() {
        print("Изображение звонок нажато!")
        
    }
    @objc func imageTapped2() {
        print("Изображение аккаунт нажато!")
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
