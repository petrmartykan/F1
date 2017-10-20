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
    
    
    
    //Pilots
    
    func createPilots() -> [Pilot] {
        
        let alonso = Pilot(ID: "driver_001", name: "Fernando Alonso", monopostID: "McLaren")
        let hamilton = Pilot(ID: "driver_002", name: "Lewis Hamilton", monopostID: "Mercedes")
        
        let massa = Pilot(ID: "driver_003", name: "Felipe Massa", monopostID: "Williams")
        let raikkonen = Pilot(ID: "driver_004", name: "Kimi Räikkönen", monopostID: "Ferrari")
        let ricciardo = Pilot(ID: "driver_005", name: "Daniel Ricciardo", monopostID: "Red Bull Racing")
        let vettel = Pilot(ID: "driver_006", name: "Sebastian Vettel", monopostID: "Ferrari")
        let bottas = Pilot(ID: "driver_007", name: "Valtteri Bottas", monopostID: "Williams")
        let ericsson = Pilot(ID: "driver_008", name: "Marcus Ericsson", monopostID: "Sauber")
        let magnussen = Pilot(ID: "driver_009", name: "Kevin Magnussen", monopostID: "Renault")
        let perez = Pilot(ID: "driver_010", name: "Sergio Pérez", monopostID: "Force India")
        var pilots = [Pilot]()
        pilots.append(alonso)
        pilots.append(hamilton)
        pilots.append(massa)
        pilots.append(raikkonen)
        pilots.append(ricciardo)
        pilots.append(vettel)
        pilots.append(bottas)
        pilots.append(ericsson)
        pilots.append(magnussen)
        pilots.append(perez)
        
        return pilots
    }
    
    
    //Circuits
    
    func createCircuits() -> [Circuit] {
        
        
        let albertPark = Circuit(GP: "Austrálie", nameCircuit: "Albert Park", lenghtInMeters: 5303)
        let baku = Circuit(GP: "Evropy", nameCircuit: "Baku", lenghtInMeters: 6006)
        let hockenheimring = Circuit(GP: "Německa", nameCircuit: "Hockenheimring", lenghtInMeters: 4574)
        let monteCarlo = Circuit(GP: "Monaka", nameCircuit: "Monte Carlo", lenghtInMeters: 3340)
        let silverstone = Circuit(GP: "Velké Británie", nameCircuit: "Silverstone", lenghtInMeters: 5891)
        
        var circuits = [Circuit]()
        
        circuits.append(albertPark)
        circuits.append(baku)
        circuits.append(hockenheimring)
        circuits.append(monteCarlo)
        circuits.append(silverstone)
        
        return circuits
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.dataSource = self
        picker.delegate = self
        self.view.backgroundColor = UIColor.red
        
        
        let circuit = ViewController()
        let circuits = circuit.createCircuits()
        
        let pilot = ViewController()
        let pilots = pilot.createPilots()
        
        
        for circuit in circuits {
            let result = circuit.startCircuit(pilots: pilots)
            
            
            print("Winner is: \(result.getWinner().name)")
            print("Second place: \(result.getSecondPlace().name)")
            print("Third place: \(result.getThirdPlace().name)")
            
        }
        
        
        
        let tipsAlbertPark = CircuitResult()
        let tipsAP = tipsAlbertPark.pilotTip(pilots: pilots[0], pilots[1], pilots[2])
        let tipsBaku = CircuitResult()
        let tipsB = tipsBaku.pilotTip(pilots: pilots[4], pilots[9], pilots[6])
        let tipsHockenheimring = CircuitResult()
        let tipsH = tipsHockenheimring.pilotTip(pilots: pilots[8], pilots[7], pilots[5])
        let tipsMonteCarlo = CircuitResult()
        let tipsMC = tipsMonteCarlo.pilotTip(pilots: pilots[3], pilots[2], pilots[9])
        let tipsSilverstone = CircuitResult()
        let tipsS = tipsSilverstone.pilotTip(pilots: pilots[0], pilots[7], pilots[4])
        
        
        for ap in tipsAP {
            print(ap.name)
        }
        for b in tipsB {
            print(b.name)
        }
        for h in tipsH {
            print(h.name)
        }
        for mc in tipsMC {
            print(mc.name)
        }
        for s in tipsS {
            print(s.name)
        }
        
        for x in circuits {
            let result = x.circuitTip(pilots: pilots)
            
            print(result)
        }
        
        
    }
    
    
    
    
    
    @IBAction func btnPressed(_ sender: Any) {
        
        pickerBtn.isHidden = false
        
        
        let circuit = ViewController()
        let circuits = circuit.createCircuits()
        
        for x in circuits {
            print("Velká cena: \(x.GP). Délka: \(x.lenghtInMeters) metrů.")
        }
        
        
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        let circuit = ViewController()
        let circuits = circuit.createCircuits()
        return circuits.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        let circuit = ViewController()
        let circuits = circuit.createCircuits()
        return circuits[row].nameCircuit
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let circuit = ViewController()
        let circuits = circuit.createCircuits()
        
        pickerBtn.setTitle(circuits[row].nameCircuit, for: UIControlState.normal)
        picker.isHidden = false
        
        
        
    }
    
    @IBAction func StartBtn(_ sender: Any) {
        
        
        
        let circuit = ViewController()
        let circuits = circuit.createCircuits()
        let pilot = ViewController()
        let pilots = pilot.createPilots()
        
        for circuit in circuits {
            let result = circuit.startCircuit(pilots: pilots)
            
            print("Winner is: \(result.getWinner().name)")
            print("Second place: \(result.getSecondPlace().name)")
            print("Third place: \(result.getThirdPlace().name)")
        }
        
        
    }
    
    
}
