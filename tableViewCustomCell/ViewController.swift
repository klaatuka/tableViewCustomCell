import UIKit

final class ViewController: UIViewController {
    private var items: [TableData] = TableData.getTableData()
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

