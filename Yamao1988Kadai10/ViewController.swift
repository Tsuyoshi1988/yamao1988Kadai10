

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 47
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let names: [String] = ["北海道","青森県","秋田県","岩手県","山形県","宮城県","福島県","新潟県","栃木県","茨城県","群馬県","埼玉県","千葉県","東京都","長野県","富山県","神奈川県","山梨県","静岡県","愛知県","岐阜県","石川県","福井県","滋賀県","三重県","京都府","和歌山県","奈良県","大阪府","兵庫県","岡山県","広島県","鳥取県","島根県","山口県","香川県","徳島県","愛媛県","高知県","大分県","福岡県","宮崎県","熊本県","佐賀県","長崎県","鹿児島県","沖縄県"]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1")! as UITableViewCell

        var contentConfig = UIListContentConfiguration.valueCell()
        contentConfig.text = names[indexPath.row]
        contentConfig.secondaryText = "\(indexPath.row + 1)番目の都道府県です"
        cell.contentConfiguration = contentConfig

        var backgroundConfig = UIBackgroundConfiguration.listPlainCell()

        let baseColor: UIColor
        switch indexPath.row % 3 {
        case 0:
            baseColor = .green
        case 1:
            baseColor = .blue
        default:
            baseColor = .red
        }
        backgroundConfig.backgroundColor = baseColor.withAlphaComponent(0.25)

        cell.backgroundConfiguration = backgroundConfig

        return cell
    }
}
