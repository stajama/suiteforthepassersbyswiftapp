//
//  ViewController.swift
//  Suite for the Passersby
//
//  Created by Stamos Mac on 3/9/19.
//  Copyright © 2019 Christina Butera. All rights reserved.
//

import UIKit
import CoreLocation
import AVFoundation

class Sculpture: {
    
    let name: String
    let pieceTitle:String
    let targetLatitude:Double
    let targetLongitude:Double
    let targetRange: Float
    let pieceUrl:String?
    var startTime = 0
    
    init(sculptureName:String, pieceTitle:String, musicUrl:String?, lat:Double, longi:Double, rangef:Float) {
        self.name = sculptureName
        self.pieceTitle = pieceTitle
        self.pieceUrl = musicUrl
        self.targetLatitude = lat
        self.targetLongitude = longi
        self.targetRange = rangef
    }
    
}

class ViewController: UIViewController, CLLocationManagerDelegate {

    let locationManager = CLLocationManager()
    var isTransitioning = false
    let standingFigures = Sculpture(sculptureName: "Standing Figures", 
                                    pieceTitle: "Headless Figures", 
                                    musicUrl: nil, 
                                    lat: 39.045812, 
                                    longi: -94.581534, 
                                    rangef: 38.1)

    let rumi = Sculpture(sculptureName: "Rumi", 
                         pieceTitle: "Love is a Madman", 
                         musicUrl: nil, lat: 39.045879, 
                         longi: -94.580090, 
                         rangef: 45.72)

    let ferment = Sculpture(sculptureName: "Ferment", 
                            pieceTitle: "Broken", 
                            musicUrl: nil, 
                            lat: 39.042758, 
                            longi: -94.579753, 
                            rangef: 40.000)

    let shuttlecockN = Sculpture(sculptureName: "North ShuttleCock", 
                                 pieceTitle: "Oda a La Vanguardia", 
                                 musicUrl: nil, 
                                 lat: 39.043357, 
                                 longi: -94.581032, 
                                 rangef: 44.196)

    let shuttlecockS = Sculpture(sculptureName: "South ShuttleCock", 
                                 pieceTitle: "Fireflies in the Garden", 
                                 musicUrl: nil, 
                                 lat: 39.042691, 
                                 longi: -94.581066, 
                                 rangef: 44.196)

    let shuttleTransition = Sculpture(sculptureName: "Between the Shuttlecocks", 
                                      pieceTitle: "Both light and shadow", 
                                      musicUrl: nil, 
                                      lat: 0, 
                                      longi: 0, 
                                      rangef: 0)

    let promenade = Sculpture(sculptureName: "not near any sculptures", 
                              pieceTitle: "Promenade", 
                              musicUrl: nil, 
                              lat: 0, 
                              longi: 0, 
                              rangef: 0)

    let rooftop1 = Sculpture(sculptureName: "Bloch Rooftop, 'Turbo,' or 'Ferryman'", 
                             pieceTitle: "Big Muddy", 
                             musicUrl: nil, 
                             lat: 39.043987, 
                             longi: -94.579814, 
                             rangef: 28.956)

    let rooftop2 = Sculpture(sculptureName: "Bloch Rooftop, 'Turbo,' or 'Ferryman'", 
                             pieceTitle: "Big Muddy", 
                             musicUrl: nil, 
                             lat: 39.043743, 
                             longi: -94.579809, 
                             rangef: 30.48)

    let fourmotives1 = Sculpture(sculptureName: "Henry Moore Sculptures", 
                                 pieceTitle: "To Cast Four Motives", 
                                 musicUrl: nil, 
                                 lat: 39.042582, 
                                 longi: -94.581893, 
                                 rangef: 30.48)

    let fourmotives2 = Sculpture(sculptureName: "Henry Moore Sculptures", 
                                 pieceTitle: "To Cast Four Motives", 
                                 musicUrl: nil, 
                                 lat: 39.04288, 
                                 longi: -94.581829, 
                                 rangef: 28.956)

    let fourmotives3 = Sculpture(sculptureName: "Henry Moore Sculptures", 
                                 pieceTitle: "To Cast Four Motives", 
                                 musicUrl: nil, 
                                 lat: 39.043271, 
                                 longi: -94.581797, 
                                 rangef: 28.956)

    let fourmotives4 = Sculpture(sculptureName: "Henry Moore Sculptures", 
                                 pieceTitle: "To Cast Four Motives", 
                                 musicUrl: nil, 
                                 lat: 39.043560, 
                                 longi: -94.581807, 
                                 rangef: 28.956)

    let fourmotives5 = Sculpture(sculptureName: "Henry Moore Sculptures", 
                                 pieceTitle: "To Cast Four Motives", 
                                 musicUrl: nil, 
                                 lat: 39.043824, 
                                 longi: -94.581822, 
                                 rangef: 27.432)

    let fourmotives6 = Sculpture(sculptureName: "Henry Moore Sculptures", 
                                 pieceTitle: "To Cast Four Motives", 
                                 musicUrl: nil, 
                                 lat: 38.946644, 
                                 longi: -94.592997, 
                                 rangef: 27.432)
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        locationManager.requestAlwaysAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        }
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            print(location.coordinate)
        }
    }

    func whatShouldPlay(coordinates:String) -> String{
        return ""
    }
}



