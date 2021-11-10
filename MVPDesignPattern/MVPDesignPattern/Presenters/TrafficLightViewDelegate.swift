//
//  TrafficLightViewDelegate.swift
//  MVPDesignPattern
//
//  Created by 이영우 on 2021/11/10.
//

import Foundation

protocol TrafficLightViewDelegate: AnyObject {
    func displayTrafficLight(description: String)
}
