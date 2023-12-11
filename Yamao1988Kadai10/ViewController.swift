

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 47
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let counter = indexPath.row + 1
        let names: [String] = ["北海道","青森　","秋田　","岩手　","山形　","宮城　","福島　","新潟　","栃木　","茨城　","群馬　","埼玉　","千葉　","東京　","長野　","富山　","神奈川","山梨　","静岡　","愛知　","岐阜　","石川　","福井　","滋賀　","三重　","京都　","和歌山","奈良　","大阪　","兵庫　","岡山　","広島　","鳥取　","島根　","山口　","香川　","徳島　","愛媛　","高知　","大分　","福岡　","宮崎　","熊本　","佐賀　","長崎　","鹿児島","沖縄　"]
        
        var identifier = ""
        
        if indexPath.row % 3 == 0 {
            identifier = "Cell1"
        } else if indexPath.row % 3 == 0 + 1 {
            identifier = "Cell2"
        } else  {
            identifier = "Cell3"
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier)! as UITableViewCell
        
        cell.textLabel?.text = "\(names[indexPath.row])                          \(counter)番目の都道府県です"
        
        return cell
    }
}

