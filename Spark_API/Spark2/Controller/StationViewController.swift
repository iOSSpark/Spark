import Foundation
import UIKit

class StationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var station = [[String: Any]]()
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Stations Near You"
        tableView.rowHeight = 150
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        let url = URL(string: "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=E85,ELEC&state=CA&limit=20&api_key=ntfU8l3Sa1d0uyIxn3jztozTfy0o6cgOBjHkf4Y3")!
        
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
             if let error = error {
                print(error.localizedDescription)
             } else if let data = data {
                 let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                 self.station = dataDictionary["fuel_stations"] as! [[String: Any]]
//                                   print(dataDictionary)
                 self.tableView.reloadData()
             }
        }
        task.resume()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        station.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StationCell", for: indexPath) as! StationCell
        
        let city = station[indexPath.row]
        
        let title = city["city"] as! String
        cell.cityName!.text = title
        
        let address = city["station_name"] as! String
        cell.addressLabel.text = address
        
        let street = city["street_address"] as! String
        cell.streetLabel.text = street
        
        let zip = city["zip"] as! String
        cell.zipCode.text = zip
        
        let state = city["state"] as! String
        cell.stateLabel.text = state
        
        return cell
    }
    
    

}


