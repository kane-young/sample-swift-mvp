//
//  ViewController.swift
//  MVPDesignPattern
//
//  Created by 이영우 on 2021/11/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var descriptionLabel: UILabel!

    private let trafficLightPresenter = TrafficLightPresenter(trafficLightService: TrafficLightService())

    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightPresenter.setViewDelegate(trafficLightViewDelegate: self)
    }

    @IBAction func redLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "RED")
    }

    @IBAction func yellowLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "YELLOW")
    }

    @IBAction func greenLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "GREEN")
    }
}

extension ViewController: TrafficLightViewDelegate {
    func displayTrafficLight(description: String) {
        descriptionLabel.text = description
    }
}
