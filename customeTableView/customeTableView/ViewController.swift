//
//  ViewController.swift
//  customeTableView
//
//  Created by Nojood Aljuaid  on 12/06/1445 AH.
//

import UIKit


var cities = [
    City(name: "الرياض", image: UIImage(named: "Riyadh")!, details: "الرياض هي عاصمة المملكة العربية السعودية، وأكبر مدنها وثالث أكبر عاصمة عربية من حيث عدد السكان.") ,
    City(name: "الدمام", image: UIImage(named: "Dammam")!, details: "الدمام مدينة سعودية تقع على ساحل الخليج العربي، وهي حاضرة المنطقة الشرقية ومركزها الإداري وأهم مدنها"),
    City(name: "الطائف ", image: UIImage(named: "Taif")!, details: "الطائف مدينة سعودية تقع في الغرب من المملكة العربية السعودية، تابعة لـمنطقة مكة المكرمة على جانبي وادي «وج»،"),
]
class ViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cityTableView.dataSource = self
        cityTableView.delegate = self
    }

    @IBOutlet weak var cityTableView: UITableView!
    
}

extension UIViewController : UITableViewDataSource , UITableViewDelegate {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "City") as! CityTableViewCell
        let city = cities[indexPath.row]
        cell.lableViewCity.text = city.name
        cell.imageViewCity.image = city.image
        cell.imageViewCity.layer.cornerRadius = cell.imageViewCity.frame.width / 2
        return cell
        
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let city = cities[indexPath.row]
        print(city.name)
        let vc = storyboard?.instantiateViewController(identifier: "detailsVC") as? DetailsVCViewController
        if let  viewCount = vc {
            viewCount.city = city
            present(viewCount , animated: true , completion: nil)
        }
    }
    
    }
