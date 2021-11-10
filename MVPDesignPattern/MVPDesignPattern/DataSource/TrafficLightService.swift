//
//  TrafficLightService.swift
//  MVPDesignPattern
//
//  Created by 이영우 on 2021/11/10.
//

import Foundation

class TrafficLightService {
    func getTrafficLight(colorName: String, callback: (TrafficLight?) -> Void) {
        let trafficLights = [
            TrafficLight(colorName: "YELLOW", description: "Selected YELLOW Button!!!"),
            TrafficLight(colorName: "GREEN", description: "Selected Green Button!!!"),
            TrafficLight(colorName: "RED", description: "Selected Red Button!!!")
        ]

        if let foundTrafficLight = trafficLights.first(where: { $0.colorName == colorName }) {
            callback(foundTrafficLight)
        } else {
            callback(nil)
        }
    }
}
