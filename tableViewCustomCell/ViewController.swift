import UIKit

final class ViewController: UIViewController {
    private var items: [TableData] = TableData.getTableData()
    var refresh = UIRefreshControl()
    lazy var tableView: UITableView = {
        .config(view: $0) {
            $0.dataSource = self
            $0.separatorStyle = .none
            $0.register(MyViewCell.self, forCellReuseIdentifier: MyViewCell.reuiCellName)
        }
    }(UITableView(frame: self.view.frame, style: .insetGrouped))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.addSubview(refresh)
        refresh.addTarget(self, action: #selector(refreAct), for: .valueChanged)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .done, target: self, action: #selector(plusBtnAct))
        //меняю цвет тайтла на переходящем экране и текст кнопки BACK - НАЗАД
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blue]
        let customBackButton = UIBarButtonItem()
        customBackButton.title = "Назад"
        navigationItem.backBarButtonItem = customBackButton
    }
    
    @objc func refreAct(){
        print("refresh")
        
        refresh.endRefreshing()
    }
    @objc func plusBtnAct() {
        print(2)
        items.append(TableData.init(name: "Добавляю с плюса", photo: "img1", text: "Просто тестирую как добавить новую ячейку через кнопку плюс"))
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: MyViewCell.reuiCellName, for: indexPath) as? MyViewCell {
            cell.configureCell(cellData: items[indexPath.row])
            cell.selectionStyle = .none
            
            // устанавливаю уникальный taq для каждой кнопки
            cell.moreDetailsBtn.tag = indexPath.row
            cell.moreDetailsBtn.addTarget(self, action: #selector(moreDetAct), for: .touchUpInside)
            return cell
        }
        return UITableViewCell()
    }
    
    @objc func moreDetAct(btn: UIButton) {
        let selectedItem = items[btn.tag]
        
        let vc = MoreDetaisViewController()
        vc.selectedItem = selectedItem
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension UIView {
    static func config<T: UIView>(view: T, block: (T) -> ()) -> T{
        view.translatesAutoresizingMaskIntoConstraints = false
        block(view)
        return view
    }
}

