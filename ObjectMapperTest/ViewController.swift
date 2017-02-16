//
//  ViewController.swift
//  ObjectMapperTest
//
//  Created by Rohit.Singh on 16/02/17.
//  Copyright © 2017 Rohit.Singh. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    //https://github.com/Hearst-DD/ObjectMapper
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let strUrl = "https://raw.githubusercontent.com/tristanhimmelman/AlamofireObjectMapper/d8bb95982be8a11a2308e779bb9a9707ebe42ede/sample_json"
        
        let session = URLSession.shared
        let request = URLRequest(url: URL(string: strUrl)!)
        let task = session.dataTask(with: request) { (data :Data?, response :URLResponse?, error: Error?) in
            if error == nil {
                
                if data != nil {
                    let stringOfJSON = String.init(data: data!, encoding: String.Encoding.utf8)
                    let weatherObject = WeatherResponse(JSONString: stringOfJSON!)
                    print(weatherObject?.arrOfForeCast?[1].strCondition as Any);
                    
                }
            } else {
                print(error.debugDescription)
            }
        }
        
        task.resume()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

