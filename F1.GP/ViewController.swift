//
//  ViewController.swift
//  F1.GP
//
//  Created by Petr Martykan on 10.10.17.
//  Copyright © 2017 Petr Martykan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var pickerBtn: UIButton!
    
    @IBOutlet weak var startBtn: UIButton!
    
    
    var pilots:[Pilot] = [Pilot]()
    var circuits:[Circuit] = [Circuit]()
    
    var selectedCircuit:Circuit!
    
    
    //Pilots
    
    func createPilots() {

        pilots.append(Pilot(ID: "driver_001", name: "Fernando Alonso", monopostID: "McLaren"))
        pilots.append(Pilot(ID: "driver_002", name: "Lewis Hamilton", monopostID: "Mercedes"))
        pilots.append(Pilot(ID: "driver_003", name: "Felipe Massa", monopostID: "Williams"))
        pilots.append(Pilot(ID: "driver_004", name: "Kimi Räikkönen", monopostID: "Ferrari"))
//        pilots.append(Pilot(ID: "driver_005", name: "Daniel Ricciardo", monopostID: "Red Bull Racing"))
//        pilots.append(Pilot(ID: "driver_006", name: "Sebastian Vettel", monopostID: "Ferrari"))
//        pilots.append(Pilot(ID: "driver_007", name: "Valtteri Bottas", monopostID: "Williams"))
//        pilots.append(Pilot(ID: "driver_008", name: "Marcus Ericsson", monopostID: "Sauber"))
//        pilots.append(Pilot(ID: "driver_009", name: "Kevin Magnussen", monopostID: "Renault"))
//        pilots.append(Pilot(ID: "driver_010", name: "Sergio Pérez", monopostID: "Force India"))
    }
    
    
    //Circuits
    
    func createCircuits() {
        
        circuits.append(Circuit(GP: "Austrálie", nameCircuit: "Albert Park", lenghtInMeters: 5303))
        circuits.append(Circuit(GP: "Evropy", nameCircuit: "Baku", lenghtInMeters: 6006))
        circuits.append(Circuit(GP: "Německa", nameCircuit: "Hockenheimring", lenghtInMeters: 4574))
        circuits.append(Circuit(GP: "Monaka", nameCircuit: "Monte Carlo", lenghtInMeters: 3340))
        circuits.append(Circuit(GP: "Velké Británie", nameCircuit: "Silverstone", lenghtInMeters: 5891))
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        picker.dataSource = self
        picker.delegate = self
        self.view.backgroundColor = UIColor.red
        
        createPilots()
        createCircuits()
    
    }
    
    @IBAction func btnPressed(_ sender: Any) {
        pickerBtn.isHidden = false
        print(selectedCircuit.nameCircuit)
        let tip = Tip()
        tip.setPilots(firstPilot: "driver_001", secondPilot: "driver_003", thirdPilot: "driver_004")
        selectedCircuit.startCircuit(pilots: pilots, tip: tip)
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return circuits.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return circuits[row].nameCircuit
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        pickerBtn.setTitle(circuits[row].nameCircuit, for: UIControlState.normal)
        picker.isHidden = false
        selectedCircuit = circuits[row]
    }
    
    @IBAction func StartBtn(_ sender: Any) {
    }
}
