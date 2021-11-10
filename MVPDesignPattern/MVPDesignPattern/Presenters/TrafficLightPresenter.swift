//
//  TrafficLightPresenter.swift
//  MVPDesignPattern
//
//  Created by 이영우 on 2021/11/10.
//

import Foundation

class TrafficLightPresenter {
    private let trafficLightService: TrafficLightService
    weak private var trafficLightViewDelegate: TrafficLightViewDelegate?

    init(trafficLightService: TrafficLightService) {
        self.trafficLightService = trafficLightService
    }

    func setViewDelegate(trafficLightViewDelegate: TrafficLightViewDelegate?) {
        self.trafficLightViewDelegate = trafficLightViewDelegate
    }

    func trafficLightColorSelected(colorName: String) {
        trafficLightService.getTrafficLight(colorName: colorName) { [weak self] trafficLight in
            if let trafficLight = trafficLight {
                self?.trafficLightViewDelegate?.displayTrafficLight(description: trafficLight.description)
            }
        }
    }
}
