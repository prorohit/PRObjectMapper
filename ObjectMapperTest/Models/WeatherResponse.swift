//
//  WeatherResponse.swift
//  ObjectMapperTest
//
//  Created by Rohit.Singh on 16/02/17.
//  Copyright © 2017 Rohit.Singh. All rights reserved.
//

import UIKit
import ObjectMapper

class WeatherResponse : Mappable {
    /// This function can be used to validate JSON prior to mapping. Return nil to cancel mapping at this point
    
    /*
     {
     "location": "Toronto, Canada",
     "three_day_forecast": [
     {
     "conditions": "Partly cloudy",
     "day" : "Monday",
     "temperature": 20
     },
     {
     "conditions": "Showers",
     "day" : "Tuesday",
     "temperature": 22
     },
     {
     "conditions": "Sunny",
     "day" : "Wednesday",
     "temperature": 28
     }
     ]
     }
     */
    
    
    
    
    var strLocation : String?
    var arrOfForeCast : [Forecast]?
    
    public required init?(map: Map) {
        
    }

    /// This function is where all variable mappings should occur. It is executed by Mapper during the mapping (serialization and deserialization) process.
    public func mapping(map: Map) {
        
        strLocation <- map["location"]
        arrOfForeCast <- map["three_day_forecast"]
    }

}


class Forecast: Mappable {
    
    /*
     "conditions": "Partly cloudy",
     "day" : "Monday",
     "temperature": 20
     */
    
    var strCondition : String?
    var strDay : String?
    var strTemprature : String?
    
    
    /// This function can be used to validate JSON prior to mapping. Return nil to cancel mapping at this point
    public required init?(map: Map) {
        
    }
    
    /// This function is where all variable mappings should occur. It is executed by Mapper during the mapping (serialization and deserialization) process.
    public func mapping(map: Map) {
        
        strCondition <- map["conditions"];
        strDay <- map["day"];
        strTemprature <- map["temperature"];
    }
    
}





